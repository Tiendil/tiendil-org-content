import csv
import json


data = []


def norm_value(value):
    if value == '':
        return None

    try:
        return int(value)
    except ValueError:
        pass

    return value


with open('2024_02_23_cleaned_data.csv', mode='r') as file:
    csv_reader = csv.reader(file)

    for row in csv_reader:
        processed_row = [norm_value(value) for value in row]

        data.append(processed_row)


print(json.dumps(data, indent=None))
