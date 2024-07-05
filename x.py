# rename all foulders in the directory from "2020-05-08-xxxx/" to
# - "2020-0001-xxxx/"
# - "2020-0002-yyyy/"
# - "2021-0001-aaaa/"
# - "2021-0002-bbbb/"
# - etc

import pathlib


root = pathlib.Path('./content/posts/')


foulders = root.glob('*')

foulders = [f for f in foulders if f.is_dir()]

foulders_by_year = {}

for f in foulders:
    year = f.name.split('-')[0]

    if year not in foulders_by_year:
        foulders_by_year[year] = []

    foulders_by_year[year].append(f)


for year, foulders in foulders_by_year.items():

    for i, f in enumerate(sorted(foulders, key=lambda x: x.name)):
        new_name = f'{year}-{str(i+1).zfill(3)}-{f.name[11:]}'
        f.rename(f.parent / new_name)
        print(f'{f.name} -> {new_name}')
