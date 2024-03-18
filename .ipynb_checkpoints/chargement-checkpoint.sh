#!/bin/sh

lsb_release -d

cd ~/work

curl -o mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz

tar -zxvf mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz

# curl -o openfoodfacts-products.jsonl.gz https://static.openfoodfacts.org/data/openfoodfacts-products.jsonl.gz

curl -o openfoodfacts-mongodbdump.tar.gz https://static.openfoodfacts.org/data/openfoodfacts-mongodbdump.tar.gz

tar -xf openfoodfacts-mongodbdump.tar.gz

mongodb-database-tools-ubuntu2204-x86_64-100.9.4/bin/mongorestore $CONNECTION_STRING_MONGO_DB dump/off/products.bson
