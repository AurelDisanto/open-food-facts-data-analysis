#!/bin/sh

# csv
curl -o en.openfoodfacts.org.products.csv.gz https://static.openfoodfacts.org/data/en.openfoodfacts.org.products.csv.gz

gzip -d en.openfoodfacts.org.products.csv.gz

# dump mongodb
curl -o openfoodfacts-mongodbdump.tar.gz https://static.openfoodfacts.org/data/openfoodfacts-mongodbdump.tar.gz

tar -xf openfoodfacts-mongodbdump.tar.gz

mongodb-database-tools-ubuntu2204-x86_64-100.9.4/bin/mongorestore $CONNECTION_STRING_MONGO_DB dump/off/products.bson

# jsonl
 curl -o openfoodfacts-products.jsonl.gz https://static.openfoodfacts.org/data/openfoodfacts-products.jsonl.gz

gzip -d en.openfoodfacts.org.products.csv.gz