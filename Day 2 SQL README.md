## README.md

/*  My sql day2 of practicing CONSTRAINTS, using ALTER TABLE to ADD / DROP/ MODIFY constraints  */


## my todays practice 


A] ADD and DROP constraints using alter table --->
  
   [ PRIMARY KEY, FOREIGN KEY, CHECK, UNIQUE, NOT NULL, DEFAULT ]

   A.1] ADD and DROP --> check constraint

        alter table sarang1
        add column age int,
        add constraints check_age CHECK(age>10);

        alter table sarang1
        drop CHECK check_age ;

  A.2] ADD and DROP --> unique constraint

        alter table sarang1
        add column id int,
        add constraints unique_id UNIQUE(id);

        alter table sarang1
        drop INDEX unique_id ; 

  A.3] ADD and DROP --> PRIMARY KEY constraint

        alter table sarang1
        add column id int,
        add constraints pk_id PRIMARY KEY(id);

        alter table sarang1
        drop PRIMARY KEY ; 


  A.4] ADD and DROP --> FOREIGN KEY constraint

        alter table sarang1
        add column users_id int,
        add constraints fk_users_id 
        FOREIGN KEY(users_id)
        REFERENCES users(id);

        alter table sarang1
        drop FOREIGN KEY fk_users_id ; 

  A.5] MODIFY column

       alter table sarang1
       modify name varchar(100) not null DEFAULT 'NEW';


 ### KEY learnings 

1) Naming a constraint is always beneficial so to ADD or DROP a constraint in future.

2) constraint name can be seen using two ways -->

   2.1) SHOW CREATE TABLE table_name 
   
   2.2) using following syntax :--->

        select constraint_name, table_name, constraint_type   from information_schema.TABLE_CONSTRAINTS
        WHERE TABLE_schema = 'tcs1' AND table_name = 'sarang1';

3) UNIQUE is dropped using DROP INDEX ---> and not DROP UNIQUE syntax


### RELATED LINKS 

1) Hashnode Blog --> Day 2

   https://saranghashnodedev.hashnode.dev/day-2-of-sql-learn-in-public-alter-table-and-constraints


2) LinkedIn Post 


3) DAY 2 --> SOURCE CODE 

   



###### stay tuned for further progress

# SQL daily progress
# Be job ready
# LEARN IN PUBLIC













 
   
