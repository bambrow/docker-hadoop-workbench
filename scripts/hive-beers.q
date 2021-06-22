CREATE DATABASE IF NOT EXISTS test;

CREATE EXTERNAL TABLE IF NOT EXISTS test.beers(
    id INT,
    brewery_id INT,
    name STRING,
    cat_id INT,
    style_id INT,
    abv DOUBLE,
    ibu DOUBLE,
    srm DOUBLE,
    upc INT,
    filepath STRING,
    descript STRING,
    add_user INT,
    last_mod TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/test/beers'
tblproperties ("skip.header.line.count"="1");