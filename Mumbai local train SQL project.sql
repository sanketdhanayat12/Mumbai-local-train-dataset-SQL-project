SELECT * FROM train_detail.mumbai_local;
use train_detail;
select * from mumbai_local; 


#(1)COUNT THE NUMBER OF TRAINS RUNNING BETWEEN TWO SPECIFIC STATION..............
select count(*)from mumbai_local where Code = 'Dahanu-Virar' and Code = 'Panvel';

#(2)COUNT THE NUMBER OF TRAIN CODE IS MMCT
select count(*) from mumbai_local where Code = 'MMCT';

#(3) COUNT THE  PLATFORM ON MUMBAI CENTRAL STATION 
select count(*) from mumbai_local where ï»¿Station = "Mumbai Central";

#(4) CALCULATE THE AVG DISTANCE OF LOCAL TRAIN
select avg(distance) from mumbai_local;

#(5)CALCULATE THE TOTAL DISTANCE COVERED BY EACH TRAIN 
select ï»¿Station, sum(distance) as total_distance from mumbai_local group by ï»¿Station;

#(6) LIST ALL THE STATION  ON A SPECIFIC TRAIN LINE
SELECT DISTINCT LINE FROM MUMBAI_LOCAL;
SELECT LINE, ï»¿Station FROM MUMBAI_LOCAL GROUP BY LINE, ï»¿Station;


#(7) LIST OF ALL THE TRAINS WHOSE DISTANCE IS GREATER THEN 5 KM
select * from mumbai_local where distance > '5KM';

#(8) FIND THE MAX DISTANCE OF EACH TRAIN
select max(distance) from mumbai_local;

#(9) WRITE A QUERY DIPLAY THE  DISTANCE OF CHURCHGATE 
select * from mumbai_local where ï»¿Station = 'Churchgate' order by distance;

#(10) DISPLAY THE DISTANCE BETWEEN 1 KM TO 5 KM 
select  * from  mumbai_local where distance between 1 AND 5;


#(11) DISPLAY THE LINE MORE THAN TWO TRACKS
select line, count(distinct tracks)as num_tracks from mumbai_local group by line having num_tracks > 2;

#(12) LIST THE STATIONS WITH MORE THAN ONE PLATFORM
select ï»¿Station, count(distinct platforms)as num_platforms from  mumbai_local group by ï»¿Station having num_platforms > 1;
 
 #(13) DISPLAY THE AVG DISTANCE OF TRAIN ON EACH LINE
 select line , avg(distance) as avg_distance from mumbai_local  group by line;
 
 #(14) CALCULATE THE AVG DISTANCE BETWEEN CONSECUTIVE STATION ON EACH LINE
 select line,avg(distance)as avg_distance from mumbai_local group by line;
 
 #(15)FIND THE STATION WITH THE SHORTEST TIME FROM THE PREVIOUS TRAIN ON A SPECIFIC LINE
 select ï»¿Station,min(Time)as shortest_time from mumbai_local where line ="Western" group by ï»¿Station;
 
 #(16) CALCULATE THE TOTAL DISTANCE COVERED BY EACH TRAIN LINE
 select line, sum(distance)as distance from mumbai_local  group by line;
 
 #(17) LIST ALL THE STATION ON A SPECIFIC TRAIN LINE 
 select distinct  ï»¿Station from mumbai_local where line ='Western';
 
 #(18) LIST THE STATIONS THAT WERE OPENED AFTER A SPECIFIC YEAR (UNSLOVED)
 #select  ï»¿Station from mumbai_local where Year of Opening >1867;
 
 
 #(19)LIST THE  LINES WHERE THE AVG DISTANCE BETWEEN STATION IS GREATER THEN 2KM
 select line from mumbai_local group by line having avg(distance) >2;
 
 #(20)FIND THE LINES WITH STATION THAT HAVE AN AVG TIME FROM THE PREVIOUS TRAIN GRETER THEN 5 MIN
 select line from mumbai_local  group by line having avg(time)>5;
 
#(21)LIST THE STATION WHERE THE AVG DISTANCE FROM PERVIOUS TRAIN IS LESS THEN 2KM
select ï»¿Station from  mumbai_local group by ï»¿Station having avg(distance)<2;

#(22)LIST THE STATIONS WHERE THE AVG TIME FROM THE PREVIOUS TRAIN IS HIGHER THEN OVERALL AVG TIME
select ï»¿Station from mumbai_local  group by ï»¿Station having avg(time)>(select avg(time) from mumbai_local);

#(23)FIND THE STATION WITH THE HIGHEST NUMBER OF TRACK ON AVERAGE
select  ï»¿Station,avg(tracks) as avg_tracks from mumbai_local group by ï»¿Station order by avg_tracks desc;

#(24) CALCULATE THE AVG DISTANCE FROM THE PREVIOUS TRAIN FOR EACH PLATFORM NUMBER
select platforms, avg(distance)as avg_distance from mumbai_local  group by platforms;

#(25)FIND THE STATIONS WHERE THE AVG TIME FROM THE PERVIOUS TRAIN IS GREATER THAN 5MIN AND THE STATION HAS MORE THAN 2 TRACKS
select ï»¿Station from mumbai_local group by ï»¿Station having avg(time)> 5 and count(distinct tracks)>2;

#(26)CALCULATE THE AVG DISTANCE FROM THE PERVIOUS TRAIN FOR STATION WITH AN ODD PLATFORM NUMBER
select avg(distance)as avg_distance from mumbai_local where mod(platforms,2)=1;

#(27)FIND THE STATIONS WITH HIGHEST NUMBER OF TRACK ON AVG AND AN AVG DISTANCE LESS THEN 2KM
select ï»¿Station,avg(tracks) as avg_tracks from mumbai_local group by ï»¿Station having avg(distance) < 2 order by avg_tracks desc;

#(28) LIST THE LINES WHERE THE MAX TIME FROM PERVIOUS TRAIN IS LESS THEN 20MIN AND THE AVG PLATFORM NUMBER IS EVEN 
select line from mumbai_local group by line having max(time)< 20 and mod(avg(platforms),2)=0;


#(29) FIND THE LINES WITH STATION THAT HAVE AN AVG TIME FROM THE PERVIOUS TRAIN GREATER THEN 4MIN AND AN AVG DISTANCE GREATER THEN 2 KM
select line from mumbai_local  group by line having avg(time)>4 and avg(distance)>2;


#(30)LIST THE STATION WITH THE HIGHEST TOTAL DISTANCE FROM THE PERVIOUS TRAIN limit 5
select ï»¿Station,sum(distance)as total_distance from mumbai_local  group by ï»¿Station order by total_distance desc limit 5;


#(31)FIND THE LINE WHERE THE AVG TIME FROM PERVIOUS TRAIN IS GREATER THEN 5MIN AND THE MAX DISTANCE IS LESS THEN 3KM
select line from mumbai_local group by line having avg(time)> 5 and max(distance) < 3;

#(32)count the no of train on western line and station code is CCG
select * from mumbai_local where line="Western" and code = "CCG";



 
 