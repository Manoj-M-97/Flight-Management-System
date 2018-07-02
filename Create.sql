\c flights

CREATE TABLE Airport(
    code varchar(3) primary key,
    city varchar(20),
    country varchar(20),
    name varchar(50)
);

CREATE TABLE Airline(
    code varchar(3) primary key,
    name varchar(30),
    image_url varchar(50),
    hub_code varchar(3)
);

CREATE TABLE Flights(
    fl_num varchar(10) primary key,
    dep_code varchar(3),
    arr_code varchar(3),
    dep_time time with time zone,
    arr_time time with time zone,
    arl_code varchar(3),
    tail_num varchar(15)
);

CREATE TABLE Availability(
    fl_num varchar(10),
    fl_date date,
    class varchar(20),
    num_seats numeric(3,0),
    primary key(fl_num, fl_date, class)
);

CREATE TABLE Fare(
    fl_num varchar(10),
    fl_date date,
    class varchar(20),
    fare numeric(10,2),
    conditions varchar(50),
    primary key(fl_num,fl_date,class,fare,conditions)
);

CREATE TABLE BaseClass(
    class_name varchar(20) primary key
);

CREATE TABLE Class(
    class_name varchar(20),
    airline varchar(3),
    particular_name varchar(40),
    primary key(class_name, airline) 
);

CREATE TABLE Aircraft(
    tail_num varchar(15) primary key,
    type varchar(20),
    capacity numeric(3,0)
);

CREATE TABLE Booking(
   ref_ID varchar(20) primary key,
   fl_num varchar(3),
   fl_date date,
   class varchar(20),
   num_of_seats numeric(1,0),
   fare_per_seat numeric(10,2),
    conditions varchar(50),
   invoice_num varchar(30)
);

CREATE TABLE Aircraft_Type(
    name varchar(20) primary key,
    manufacturer varchar(30),
    max_capacity numeric(3,0)
);

CREATE TABLE Date(
    fl_date date primary key,
    day varchar(10)
);

CREATE TABLE Personal_Details(
    f_name varchar(30),
    l_name varchar(30),
    m_name varchar(30),
    ref_id varchar(20),
    pas_num numeric(1,0),
    passport varchar(10),
    card_num varchar(16),
    special_request varchar(200),
    door_num varchar(10),
    street varchar(20),
    area varchar(20),
    city varchar(20),
    country varchar(30),
    primary key(ref_id,pas_num,special_request)

);



