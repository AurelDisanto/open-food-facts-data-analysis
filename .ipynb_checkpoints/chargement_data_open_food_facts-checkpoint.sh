#!/bin/sh

# récupération du csv en local dans le conteneur => non retenu in fine
curl -o en.openfoodfacts.org.products.csv.gz https://static.openfoodfacts.org/data/en.openfoodfacts.org.products.csv.gz

gzip -d en.openfoodfacts.org.products.csv.gz

# récupération du dump mongodb en local dans le conteneur => non retenu in fine
curl -o openfoodfacts-mongodbdump.tar.gz https://static.openfoodfacts.org/data/openfoodfacts-mongodbdump.tar.gz

tar -xf openfoodfacts-mongodbdump.tar.gz

mongodb-database-tools-ubuntu2204-x86_64-100.9.4/bin/mongorestore $CONNECTION_STRING_MONGO_DB dump/off/products.bson

# récupération du jsonl en local dans le conteneur => format retenu in fine
curl -o openfoodfacts-products.jsonl.gz https://static.openfoodfacts.org/data/openfoodfacts-products.jsonl.gz

gzip -d openfoodfacts-products.jsonl.gz

# copie sur le s3 du datalab des fichiers csv et parquet contenant les données d'intérêt extraites à partir du jsonl

mc cp "/home/onyxia/work/data_interet.csv" s3/auredisanto/open-food-facts-analysis/data_interet.csv

mc cp "/home/onyxia/work/data_interet.parquet" s3/auredisanto/open-food-facts-analysis/data_interet.parquet