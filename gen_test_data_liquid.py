from liquid import Environment
from liquid import FileSystemLoader
# from jinja2 import Template
from liquid import Template # will be checked later
import pandas as pd
from pathlib import Path
import json

env = Environment(loader=FileSystemLoader("input/test-data-fsh/"))
t1 = env.get_template("template-be-ampp-liquids.fsh")

DATA_FILE='input/test-data-fsh/be_AMPPs_20220425.csv'
df=pd.read_csv(DATA_FILE, sep=";", decimal=",", skiprows=1) # in this case the headers are in row 2, so we skip the 2st row
df = df.iloc[0:2]
data = {'data': json.loads(df.to_json(orient='records'))}
print(t1.render(data))

