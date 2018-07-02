# Flight-Management-System
This is a implementation of the database for flight management system. It is implemented in postgresSQL DB. It enables the backend interface to store and retrieve information of flights and related information.

# Description:
It takes into account fares, connections, flights, airlines, dates, availability, airports, class, aircraft.
There are different files which the statements to create and update the tables for all of the above.

# Order of Execution:
Create.sql
Alter.sql
airportInsert.sql
airlineInsert.sql
baseClassInsert.sql
aircraft_TypeInsert.sql
AircraftInsert.sql
DateInsert.sql
ClassInsert.sql
FlightsInsert.sql
AvailibilityInsert.sql
FareInsert.sql

# Sample Query:
Query for all flights from Bengaluru to Delhi with 1 connection

select f1.fl_num||','||f2.fl_num as fl_num,f1.dep_time,f2.arr_time,fa1.fare+fa2.fare as total_fare from flights f1,flights f2, fare fa1,fare fa2,airport a1,airport a2 where f1.dep_code=a1.code and f2.arr_code = a2.code and a1.city='Bengaluru' and a2.city='Delhi' and f1.arr_code=f2.dep_code  and fa1.fl_num = f1.fl_num and fa2.fl_num = f2.fl_num and fa1.fl_date=fa2.fl_date and fa1.fl_date ='2017-05-15' and fa1.class=fa2.class and fa1.class='Economy' order by total_fare;
