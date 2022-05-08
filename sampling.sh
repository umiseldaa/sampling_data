#!/bin/bash

# membuat repositori data
mkdir data

# mendownload data weather_data.xlsx
curl -L https://github.com/labusiam/dataset/raw/main/weather_data.xlsx > data/weather_data.xlsx


# mengkonvert sheet dari weather_data ke dalam bentuk csv
in2csv data/weather_data.xlsx --sheet "weather_2014" > data/weather_2014.csv
in2csv data/weather_data.xlsx --sheet "weather_2015" > data/weather_2015.csv

# menggabungkan sheet weather 2014 dan 2015 menjadi satu csv
csvstack data/weather_2014.csv data/weather_2015.csv > data/weather.csv

# menghapus data weather_data.xlsx
rm data/weather_data.xlsx

