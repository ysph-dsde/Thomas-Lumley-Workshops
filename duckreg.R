setwd("~/Downloads/big-duck-data")
con<-dbConnect(duckdb())

agg<-dbGetQuery(con, "select avg(fare_amount), passenger_count, RatecodeID, count(*)  from read_parquet('*.parquet') group by passenger_count, RatecodeID")
dim(agg)
m<-lm(`avg(fare_amount)`~passenger_count+I(passenger_count==0)+factor(RatecodeID), weights=`count_star()`,data=agg)



aggc<-dbGetQuery(con, "select avg(fare_amount), avg(tip_amount), count(*)  from read_parquet('*.parquet') group by fare_amount")
dim(aggc)

mc<-lm(`avg(tip_amount)`~`avg(fare_amount)`,weights=`count_star()`,data=aggc)
summary(mc)

## try rounding

agg_rnd<-dbGetQuery(con, "select avg(round(fare_amount)), avg(tip_amount), count(*)  from read_parquet('*.parquet') group by round(fare_amount)")
dim(agg)
m_rnd<-lm(`avg(tip_amount)`~`avg(round(fare_amount))`,weights=`count_star()`,data=agg_rnd)
summary(m_rnd)




### remotes::install_github("grantmcdermott/duckreg")
library(duckreg)
duckreg(
    tip_amount ~ fare_amount| VendorID ,
    path="read_parquet('*.parquet')"
)

duckreg(
    tip_amount ~ fare_amount+trip_distance | VendorID,
     path="read_parquet('*.parquet')")

duckreg(
     tip_amount ~ fare_amount+trip_distance | PULocationID,
     path="read_parquet('*.parquet')")

