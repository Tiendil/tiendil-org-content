import uuid
import psycopg
import timeit


# Note: no row_factory=dict_row
# Note: no async
# Note: forsing binary protocol shows the same results


N = 1000
M = 100


def query_1(conn, n):
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


def query_2(conn, n):
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


def query_3(conn, n):
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


def query_4(conn, n):
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


def run():
    with psycopg.connect("dbname=ffun user=ffun password=ffun host=postgresql") as conn:

        ##########################################################################
        # Demonstrate that everything works correctly and the results are the same
        # Also, warm up the database
        ##########################################################################

        data_1 = query_1(conn, N)
        data_2 = query_2(conn, N)
        data_3 = query_3(conn, N)
        data_4 = query_4(conn, N)

        print(data_1 == data_2 == data_3 == data_4)

        ##########################################################################
        # Measure the performance of each query
        ##########################################################################

        time_1 = timeit.timeit(lambda: query_1(conn, N), number=M)
        time_2 = timeit.timeit(lambda: query_2(conn, N), number=M)
        time_3 = timeit.timeit(lambda: query_3(conn, N), number=M)
        time_4 = timeit.timeit(lambda: query_4(conn, N), number=M)

        print(f"Number of records: {N}")
        print(f"Number of measurements: {M}")

        print(f"Query 1: {time_1:.2f} seconds")
        print(f"Query 2: {time_2:.2f} seconds")
        print(f"Query 3: {time_3:.2f} seconds")
        print(f"Query 4: {time_4:.2f} seconds")


run()
