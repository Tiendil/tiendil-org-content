import uuid
import psycopg
import timeit


N = 1000
M = 100


# --8<-- [start:version_1]
def version_1(conn, n):
    data = {}

    with conn.cursor() as cur:
        cur.execute("SELECT * FROM o_relations ORDER BY id DESC LIMIT %(limit)s", {"limit": n})

        results = cur.fetchall()

        for row in results:
            entry_id = row[1]

            if entry_id not in data:
                data[entry_id] = set()

            data[entry_id].add(row[2])

        return data
# --8<-- [end:version_1]


# --8<-- [start:version_2]
def version_2(conn, n):
    data = {}

    with conn.cursor() as cur:
        cur.execute("SELECT entry_id, tag_id FROM o_relations ORDER BY id DESC LIMIT %(limit)s", {"limit": n})

        results = cur.fetchall()

        for row in results:
            entry_id = row[0]

            if entry_id not in data:
                data[entry_id] = set()

            data[entry_id].add(row[1])

        return data
# --8<-- [end:version_2]


# --8<-- [start:version_3]
def version_3(conn, n):
    data = {}

    entry_ids_mapping = {}

    with conn.cursor() as cur:
        cur.execute(
            "SELECT entry_id::text, tag_id FROM o_relations ORDER BY id DESC LIMIT %(limit)s", {"limit": n}
        )

        results = cur.fetchall()

        for row in results:
            raw_entry_id = row[0]

            if raw_entry_id not in entry_ids_mapping:
                entry_ids_mapping[raw_entry_id] = uuid.UUID(raw_entry_id)

            entry_id = entry_ids_mapping[raw_entry_id]

            if entry_id not in data:
                data[entry_id] = set()

            data[entry_id].add(row[1])

        return data
# --8<-- [end:version_3]


# --8<-- [start:version_4]
def version_4(conn, n):
    data = {}

    entry_ids_mapping = {}

    with conn.cursor() as cur:
        cur.execute(
            "SELECT CONCAT(entry_id::text, '|', tag_id::text) AS ids FROM o_relations ORDER BY id DESC LIMIT %(limit)s",
            {"limit": n},
        )

        results = cur.fetchall()

        for row in results:
            raw_entry_id, raw_tag_id = row[0].split("|")

            if raw_entry_id not in entry_ids_mapping:
                entry_ids_mapping[raw_entry_id] = uuid.UUID(raw_entry_id)

            entry_id = entry_ids_mapping[raw_entry_id]

            if entry_id not in data:
                data[entry_id] = set()

            data[entry_id].add(int(raw_tag_id))

        return data
# --8<-- [end:version_4]


def run():
    with psycopg.connect("dbname=ffun user=ffun password=ffun host=postgresql") as conn:

        ##########################################################################
        # Demonstrate that everything works correctly and the results are the same
        # Also, warm up the database
        ##########################################################################

        data_1 = version_1(conn, N)
        data_2 = version_2(conn, N)
        data_3 = version_3(conn, N)
        data_4 = version_4(conn, N)

        print(data_1 == data_2 == data_3 == data_4)

        ##########################################################################
        # Measure the performance of each version
        ##########################################################################

        time_1 = timeit.timeit(lambda: version_1(conn, N), number=M)
        time_2 = timeit.timeit(lambda: version_2(conn, N), number=M)
        time_3 = timeit.timeit(lambda: version_3(conn, N), number=M)
        time_4 = timeit.timeit(lambda: version_4(conn, N), number=M)

        print(f"Number of records: {N}")
        print(f"Number of measurements: {M}")

        print(f"Version 1: {time_1:.2f} seconds")
        print(f"Version 2: {time_2:.2f} seconds")
        print(f"Version 3: {time_3:.2f} seconds")
        print(f"Version 4: {time_4:.2f} seconds")


run()
