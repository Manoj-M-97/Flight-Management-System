\c flights

ALTER TABLE Airline add constraint f1 foreign key(hub_code) references Airport;

ALTER TABLE Flights add constraint f2a foreign key(dep_code) references Airport;

ALTER TABLE Flights add constraint f2b foreign key(arr_code) references Airport;

ALTER TABLE Flights add constraint f3 foreign key(arl_code) references Airline;

ALTER TABLE Availability add constraint f4 foreign key(class) references BaseClass;

ALTER TABLE Flights add constraint f5 foreign key(tail_num) references Aircraft;

ALTER TABLE Availability add constraint f6 foreign key(fl_date) references Date;

ALTER TABLE Availability add constraint f7 foreign key(fl_num) references Flights;

ALTER TABLE Fare add constraint f8 foreign key(fl_num, fl_date, class) references Availability;

ALTER TABLE Aircraft add constraint f9 foreign key(type) references Aircraft_Type;

ALTER TABLE Personal_Details add constraint f10 foreign key(ref_id) references Booking;

ALTER TABLE Booking add constraint f11 foreign key(fl_num,fl_date,class,fare_per_seat,conditions) references Fare;

ALTER TABLE Class add constraint f12 foreign key(airline) references Airline;

ALTER TABLE Class add constraint f13 foreign key(class_name) references BaseClass;
