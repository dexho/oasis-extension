#!/bin/bash

day=`date -d "yesterday" +%Y-%m-%d`
wget https://github.com/nytimes/covid-19-data/blob/master/us-counties.csv?raw=true
grep "$day" us-counties.csv?raw=true > us-counties.csv

wget https://github.com/nytimes/covid-19-data/blob/master/us-states.csv?raw=true
grep  "$day" us-states.csv?raw=true > us-states.csv

wget https://github.com/nytimes/covid-19-data/blob/master/us.csv?raw=true
grep  "$day" us.csv?raw=true > us.csv
