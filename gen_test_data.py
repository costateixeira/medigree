from jinja2 import Template
#from liquid import Template # will be checked later
import pandas as pd
from pathlib import Path

with open('input/test-data-fsh/template-be-ampp-jinja.fsh', 'r') as file:
    templateString = file.read()
t = Template(templateString)

DATA_FILE='input/test-data-fsh/be_AMPPs_20220425.csv'
df=pd.read_csv(DATA_FILE, sep=";", decimal=",", skiprows=1) # in this case the headers are in row 2, so we skip the 2st row

Path("input/fsh/generated").mkdir(parents=True, exist_ok=True)
#t.stream(data=df.iloc[0:2]).dump('input/fsh/be-ampp.fsh') ##For only some data
t.stream(data=df).dump('input/fsh/generated/be-ampp.fsh')

#print(t.render(data=df.iloc[0:2]))

