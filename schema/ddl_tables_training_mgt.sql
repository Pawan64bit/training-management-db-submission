create table courses( c_id int primary key, c_name varchar(45));

create table topics( t_id int primary key, topic varchar(45), c_id int,
 foreign key(c_id) references courses(c_id));
 
create table trainers( trainer_id int primary key, trainer_name varchar(45));

create table batches( b_code int primary key, start_date date, end_date date, c_id int);

create table trainer_batch( trainer_id int, b_code int,
primary key( trainer_id, b_code),
foreign key( trainer_id ) references trainers (trainer_id),
foreign key( b_code ) references batches (b_code));

create table candidates (candidate_id int, name varchar(45), email varchar(45) unique, phone varchar(15));

create table candidates_batch ( candidate_id int, b_code int, status varchar(20),
check ( status in ('In progress','Completed','Terminated')),
primary key( candidate_id, b_code),
foreign key(candidate_key) references candidates (candidate_id),
foreign key(b_code) references batches (b_code));

create table assignments ( assignment_id int primary key, b_code int, title varchar(45), descrip varchar(45), due_date date,
foreign key ( b_code) references batches (b_code));

create table submit( candidate_id int, assignment_id int, sub_date date, score int,
primary key( candidate_key, assignment_key ),
foreign key( candidate_key ) references candidates (candidate_key),
foreign key( assignment_key ) references assignments ( assignment_key ));