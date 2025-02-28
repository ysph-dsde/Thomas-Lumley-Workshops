library(duckdb)
setwd("~/Downloads/big-duck-data")
con<-dbConnect(duckdb())
dbGetQuery(con, "select count(*) from read_parquet('*.parquet') ")

dbGetQuery(con, "select * from read_parquet('*.parquet') limit 10")

negtip<-dbGetQuery(con, "select * from read_parquet('*.parquet') where tip_amount < 0")
dim(negtip)
head(negtip)


b<-dbGetQuery(con, "select * from read_parquet('*.parquet') where total_amount == 20.16 and PULocationID == '229' and DOLocationID == '236'")
head(b)
b[1,]
negtip[2,]

dbGetQuery(con, "select median(tip_amount), passenger_count, count(*)  from read_parquet('*.parquet') group by passenger_count")
