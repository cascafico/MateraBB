#!/bin/bash

# use to adapt and join case vacanza and B&B csv

awk -F "," '{ print $1","$2","$3","$4","$5","$6","$7","$12","$13"," }' "import_Ricettività_Matera - CasaVacanze.csv" > joined.csv
awk -F "," '{ print $2","$3","$4","$5","$6","$7","$8",,"$13","$1 }' "import_Ricettività_Matera - B&B.csv" >> joined.csv

sed -i '/LEGALE_RA/d' joined.csv
sed -i '1 i\lat,lon,TIPOLOGIA,name,LEGALE_RA,UBICAZIONE,City,CODICE FISCALE,POSTI LETTO,ID' joined.csv


# import_Ricettività_Matera - CasaVacanze.csv
# LAT,LON,TIPOLOGIA,name,LEGALE_RA,UBICAZIONE,City,Country,PARTICELLA,SUB,FOGLIO,CODICE FISCALE,POSTI LETTO,DATA INIZIO ATTIVITA',
# 40.66624476,16.60764279,Casa Vacanza, SOGNANDO MATERA,SOGNANDO MATERA SRL,VICO SAN GIUSEPPE 13,Matera,Italy,664,7,159,1314120773,4,42872,

# import_Ricettività_Matera - B&B.csv
# ID,LAT,LON,TIPOLOGIA,name,LEGALE_RA,UBICAZIONE,City,FOGLIO,PARTICELLA,Country,SUB,POSTI LETTO,DATA INIZIO ATTIVITA'
# 278,40.7259988,16.5756483,Bed & Breakfast,ANGOLO FELICE,REGA FRANCESCO,via Ungheria 8,Matera,14,1060,Italy,1,6,40812




