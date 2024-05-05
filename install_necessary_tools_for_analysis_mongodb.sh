#!/bin/sh

lsb_release -d

cd ~/work

# curl -o mongodb-linux-x86_64-ubuntu2204-7.0.7.tgz https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu2204-7.0.7.tgz

# tar -zxvf mongodb-linux-x86_64-ubuntu2204-7.0.7.tgz

curl -o mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz

tar -zxvf mongodb-database-tools-ubuntu2204-x86_64-100.9.4.tgz

curl -o mongosh-2.2.0-linux-x64.tgz https://downloads.mongodb.com/compass/mongosh-2.2.0-linux-x64.tgz

tar -zxvf mongosh-2.2.0-linux-x64.tgz






