#!/bin/sh

# copie sur le s3 du datalab des fichiers csv et parquet contenant les données d'intérêt extraites à partir du jsonl

mc cp "/home/onyxia/work/data_interet.csv" s3/auredisanto/open-food-facts-analysis/data_interet.csv

mc cp "/home/onyxia/work/data_interet.parquet" s3/auredisanto/open-food-facts-analysis/data_interet.parquet