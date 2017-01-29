#!/bin/bash

echo "generating real-time data..."

# get real time data
curl https://downloads.elexonportal.co.uk/fuel/download/latest?key=guhm6tgkpjnttj9 > main.xml

# time stamped file name
today=`date "+%b_%d_%Y_%H.%M.%S"`_results.csv

# HEADER

printf "GENERATION_BY_FUEL_TYPE_TABLE" >> temp-holder.txt

printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt



# Table TYPE

printf "REAL TIME DATA" >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/@AT)" main.xml  >> temp-holder.txt
printf "\n" >> temp-holder.txt
printf "TOTAL USAGE" >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/@TOTAL)" main.xml  >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt


# CCGT 

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='CCGT']/@TYPE)" main.xml  >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='CCGT']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='CCGT']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# OCGT

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OCGT']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OCGT']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OCGT']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# OIL

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OIL']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OIL']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OIL']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# COAL

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='COAL']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='COAL']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='COAL']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# NUCLEAR

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='NUCLEAR']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='NUCLEAR']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='NUCLEAR']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# WIND

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='WIND']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='WIND']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='WIND']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# PS

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='PS']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='PS']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='PS']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# NPSHYD

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='NPSHYD']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='NPSHYD']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='NPSHYD']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# OTHER

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OTHER']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OTHER']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='OTHER']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# INTFR

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTFR']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTFR']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTFR']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt


# INTIRL

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTIRL']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTIRL']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTIRL']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

# INTNED

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTNED']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTNED']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTNED']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt


# INTEW

xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTEW']/@TYPE)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTEW']/@VAL)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt
xmllint --xpath "string(//GENERATION_BY_FUEL_TYPE_TABLE/INST/FUEL[@TYPE='INTEW']/@PCT)" main.xml >> temp-holder.txt
printf "\n" >> temp-holder.txt

paste -d, -s temp-holder.txt >> $today

rm temp-holder.txt

echo "data generation complete..."