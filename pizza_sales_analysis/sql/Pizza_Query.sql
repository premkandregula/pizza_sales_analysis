select * from pizza_sales

--total revenue
select sum(total_price) from pizza_sales

--average order value
select sum(total_price) / count(distinct(order_id)) as Avg_order_value from pizza_sales

--total pizza sold
select sum(quantity) from pizza_sales

--total orders placed
select count(distinct(order_id)) from pizza_sales

--average pizza per order
select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct(order_id)) as decimal(10,2)) as decimal(10,2)) from pizza_sales

--Daily Trend for Total Orders
SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)

--Monthly Trend for Orders
SELECT DATENAME(MONTH, order_date) AS order_month, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY total_orders desc

--% of Sales by Pizza Category
SELECT pizza_category ,sum(total_price) as total_price, cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as pct from pizza_sales
group by pizza_category 

--% of Sales by Pizza Size
SELECT pizza_size ,sum(total_price) as total_price, cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as pct from pizza_sales
group by  pizza_size

--Total Pizzas Sold by Pizza Category
SELECT pizza_category,sum(quantity) as pizza_count from pizza_sales group by pizza_category

--Top 5 Pizzas by Revenue
SELECT Top 5 pizza_name , sum(total_price) as revenue from pizza_sales group by pizza_name order by revenue desc

--Bottom 5 Pizzas by Revenue
SELECT Top 5 pizza_name , sum(total_price) as revenue from pizza_sales group by pizza_name order by revenue asc

--Top 5 Pizzas by Quantity
SELECT Top 5 pizza_name , sum(quantity) as quantity from pizza_sales group by pizza_name order by quantity desc

--Bottom 5 Pizzas by Quantity
SELECT Top 5 pizza_name , sum(quantity) as quantity from pizza_sales group by pizza_name order by quantity asc

-- Top 5 Pizzas by Total Orders
SELECT Top 5 pizza_name , count(distinct(order_id)) as total_order from pizza_sales group by pizza_name order by total_order desc

--Bottom 5 Pizzas by Total Orders
SELECT Top 5 pizza_name , count(distinct(order_id)) as total_order from pizza_sales group by pizza_name order by total_order asc
