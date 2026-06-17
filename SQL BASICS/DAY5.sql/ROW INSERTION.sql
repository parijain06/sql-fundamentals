-- INSERTING A SINGLE ROW

INSERT INTO customers
VALUES ( 
        DEFAULT,
        'John',
        'Smith',
        '1990-01-01',
        NULL,
        'address',
        'city',
        'ca',
        DEFAULT);

-- if we check on customer table attributes we have given value as:
-- values will be assigned according to data types

-- customer id is AI i.e sql can assign if we don't
-- first_name is not AI and is NN , we need to assign value 
-- last_name is not AI and is NN , we need to assign value
-- dob is NULL, we can either write or leave empty
-- phone is NULL, we can either write or leave empty
-- address is not AI and is NN , we need to assign value
-- city is not AI and is NN , we need to assign value
-- state is not AI and is NN , we need to assign
-- points need to be assigned a value otherwise 0 will be assigned

-- we can also write it this way:
-- this we need to assign values to those columns we did above
-- we can even reorder our columns.. obviously we will need to reorder the values as well
INSERT INTO customers(
        last_name,
        first_name,
        birth_date,
        address,
        city,
        state)
VALUES ( 'Jain',
        'Pari',
        '1990-01-01',
       'address',
        'city',
        'ca');
        
        
        

-- INSERTING MULTIPLE ROWS

INSERT INTO customers (first_name, last_name , state, address , city)
VALUES ('Pari', 'Jain', 'VA','address','meerut'),
	   ('Ishan', 'Pandey', 'CA','address','meerut'),
       ('Vansh','Jain', 'GA','address','goa');



-- INSERTING HIERARCHIAL ROWS

INSERT INTO orders (customer_id , order_date,status)
VALUES (1,'2019-01-02',1);

INSERT INTO order_items
VALUES
      (LAST_INSERT_ID(),1,1,2.98),
      (LAST_INSERT_ID(),2,1,8.98)
