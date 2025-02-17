/*
Question1: Find the different payment methods, number of transactions and how many items sold were associated with that
payment method.
*/
select
	distinct payment_method,
    count(*) as n_transactions,
    sum(quantity) as items_sold
from walmart
group by 1
order by 3 desc;

/*
Display the highest rate category in each branch, displaying each branch, category and it's average rating
*/
select branch, category
from
(
select 
	branch,
    category,
    avg(rating) as average_rating,
    rank() over(partition by branch order by avg(rating)desc) as branch_rank
from walmart
group by 1,2
) sub
where branch_rank = '1';

-- Question3:Identify the busiest day for each branch based on the number of transaction.
select branch, day_name
from
(
select 
	branch,
    dayname(str_to_date(date, '%d/%m/%y')) as day_name,
    count(*) as n_transactions,
    rank() over(partition by branch order by count(*) desc) as branch_rank
from walmart
group by 1,2
) sub
where branch_rank = '1';

/* 
Question4:Determine the avergae, minimum and maximum rating of products for each city.
List the city, average_rating, min_rating and max_rating.
*/
select city, category, min(rating) as min_rating, max(rating) as max_rating, avg(rating) as average_rating
from walmart
group by 1,2;

/*
Question5
Calculate the total profit for each category by considering the total profit as (unit_price*quantity*profit_margin).
List category and total_profit, ordered from highest profit to lowest_profit. 
*/
select
	category,
    sum(Total_Price) as revenue,
    sum(Total_Price * profit_margin) as profit
from walmart
group by 1;

/*
Question6
Determine the most common payment method for each branch.
Display branch name and the payment_method
*/
with branch_pm as
(
select
	branch,
    payment_method,
    count(*) as n_transactions,
    rank() over(partition by branch order by count(*)desc) as branch_rank
from walmart
group by 1,2
)
select branch, payment_method
from branch_pm
where branch_rank = 1;

/*
Question 7
Categorize sales into 3 groups: Morning, Afternoon, Evening
Find out each shift and the number of invoices.
*/
select
branch,
case 
	when hour(str_to_date(time, '%H:%i:%s')) < 12 then 'Morning'
	when hour(str_to_date(time, '%H:%i:%s')) between 12 and 17 then 'Afternoon'
	else 'Evening'
end as shift,
count(*) as n_invoices
from walmart
group by 1,2
order by 1,3 desc;

/*
Question 8
Identify the five branches who've had the highest descrease percentage in revenue compared to the previous year.
*/
with branch_revenue as (
    select
        branch,
        year(date) as revenue_year,
        sum(total_price) as total_revenue
    from walmart
    group by branch, year(date)
),
revenue_with_lag as (
    select
        branch,
        revenue_year,
        total_revenue,
        lag(total_revenue) over (partition by branch order by revenue_year) as last_year_revenue
    from branch_revenue
),
percentage_decrease as
(
select
    branch,
    revenue_year as current_year,
    round(((last_year_revenue - total_revenue) / last_year_revenue) * 100, 2) as percentage_decrease,
    rank() over(order by round(((last_year_revenue - total_revenue) / last_year_revenue) * 100, 2) desc) as rnk
from revenue_with_lag
where last_year_revenue is not null
order by percentage_decrease desc
)
select branch
from percentage_decrease
where rnk <= 5;

