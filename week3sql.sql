SELECT * FROM orders;
-- List all products with a discounted price below ₹500.
SELECT 
    *
FROM
    orders
WHERE
    discounted_price < 500;

-- Find products with a discount percentage of 50% or more.

select * from orders where discount_percentage >= 0.50;

-- Display the difference between the average of the actual price
--  and the discounted price for each product.


select product_name,avg(actual_price - discounted_price) avg_price_diff
from orders group by product_name;

-- Query reviews that mention "fast charging" in their content.


select * from orders where product_name like "%fast charging%";

-- Identify products with a discount percentage between 20% and 40%

select * from orders where discount_percentage between 0.20 and 0.40;



-- Find products that have an actual price above ₹1,000 and 
-- are rated 4 stars or above.

select * from orders where actual_price = 1000 and rating >= 4;


-- Find products where the discounted price ends with a 9
select * from orders where discounted_price like "%9";


-- Display review contents that contains words like worst, waste, poor, 
-- or not good.

SELECT 
    *
FROM
    orders
WHERE
    review_content LIKE '%worst%'
        OR review_content LIKE '%waste%'
        OR review_content LIKE '%poor%'
        OR review_content LIKE '%not good%'; 
        
-- List all products where the category includes "Accessories."

select * from orders where category like "%Accessories%";


