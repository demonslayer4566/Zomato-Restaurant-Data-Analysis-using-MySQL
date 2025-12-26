
CREATE DATABASE zomato_db;

USE zomato_db;

CREATE TABLE zomato (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    cost_for_two INT,
    online_order VARCHAR(5),
    table_booking VARCHAR(5)
);

                       /*QUERIES*/
                       
/*Query1-->View full table*/
             SELECT * 
             FROM zomato_db.zomato;
    
/*Query2-->Restaurants in Bangalore*/
            SELECT name, city
           FROM zomato_db.zomato
            WHERE city = 'Bangalore';
 
 /*Query3-->Restaurants with rating above 4*/
            SELECT name, rating
            FROM zomato_db.zomato
            WHERE rating > 4.0;

/*Query4-->Online order available*/
          SELECT name
		  FROM zomato_db.zomato
          WHERE online_order = 'Yes';

/*Query5-->Table booking available*/
           SELECT name
           FROM zomato_db.zomato
           WHERE table_booking = 'Yes';

/*Query6-->Average rating*/
        SELECT AVG(rating) AS avg_rating
        FROM zomato_db.zomato;

/*Query7-->Restaurants per city*/
        SELECT city, COUNT(*) AS total_restaurants
         FROM zomato_db.zomato
         GROUP BY city;

/*Query8-->Budget restaurants*/
       SELECT name, cost_for_two
        FROM zomato_db.zomato
        WHERE cost_for_two < 500;
        
/*Query9-->North Indian cuisine*/
      SELECT name
       FROM zomato_db.zomato
       WHERE cuisine = 'North Indian';
       
 /*Query10-->Top rated restaurant*/  
       SELECT name, rating
        FROM zomato_db.zomato
        ORDER BY rating DESC
         LIMIT 1;

 /*Query11-->Top 5 costly restaurants*/  
      SELECT name, cost_for_two
         FROM zomato_db.zomato
         ORDER BY cost_for_two DESC
          LIMIT 5;

/*Query12-->Rating between 3.5 and 4.5*/ 
      SELECT name, rating
      FROM zomato_db.zomato
      WHERE rating BETWEEN 3.5 AND 4.5;

/*Query13-->Online orders by city*/ 
     SELECT city, COUNT(*) AS online_orders
       FROM zomato_db.zomato
        WHERE online_order = 'Yes'
         GROUP BY city;

/*Query14-->Average cost by cuisine*/ 
         SELECT cuisine, AVG(cost_for_two) AS avg_cost
         FROM zomato_db.zomato
         GROUP BY cuisine;

/*Query15-->No online order & no table booking*/ 
       SELECT name
       FROM zomato_db.zomato
       WHERE online_order = 'No'
       AND table_booking = 'No';

