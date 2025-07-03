## NAMING A CONSTRAINT 

/* naming a constraint is crucial if we need to --> DROP or MODIFY a constraint */

/* CAN NAME A CONSTRAINT  IN TWO WAYS ---> 1) directly at time of CREATING A TABLE .
                                           2) by using ALTER TABLE .                      */


/* use of "" SHOW CREATE TABLE table_name "" to get information of constraint name   */


## A] naming a constraint at time of creating a table

      

       create table sarang1
  (
    id int,
    age int,
    status varchar(20),
    constraint pk_id primary key (id)); /* naming a PRIMARY KEY constraint at time of creating a table */


    

## B] naming a constraint at time of ALTER TABLE


    ALTER TABLE sarang1
   
    add column users_name varchar(20) not null,
    add constraint unique_users_name UNIQUE (users_name),/* ------->  naming a UNIQUE constraint */
    
    add column amount int ,
    add constraint check_amount check (amount >0), /*----------> naming a CHECK constraint */
    
    add column sarang_users_id int,
    add constraint fk_sarang_users_id  /* ------------> naming a FOREIGN KEY */
    foreign key (sarang_users_id)
    references users(users_id); 




## C] DROPING A CONSTRAINT ---> to drop a constraint we must first know its NAME and so we first name a constraint.

      
      /* C.1] TO DROP A "" PRIMARY KEY "" we use --> */

            ALTER TABLE sarang1
            drop primary key ;


     /* C.2] TO drop "" CHECK "" constraint */

            ALTER TABLE sarang1
            drop CHECK check_amount;  




     /* C.3] to drop "" UNIQUE "" constraint */

            ALTER TABLE  sarang1
            drop index unique_users_name ;


    /* C.4] to drop "" FOREIGN KEY "" constraint */

            ALTER TABLE sarang1
            drop FOREIGN KEY fk_sarang_users_id ;


## D] To see constraint type and constraint name we must use syntax --->

      select constraint_name, table_name, constraint_type   from information_schema.TABLE_CONSTRAINTS
      WHERE TABLE_schema = 'tcs1' AND table_name = 'sarang1';












