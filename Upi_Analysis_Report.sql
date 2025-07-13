--SQL
select * from `Dataset.Cleaned_UPI_Transaction_2024` limit 5;

--report_transaction_timing
SELECT day_of_week,hour_of_day, COUNT(*) AS transaction_count
FROM `Dataset.Cleaned_UPI_Transaction_2024`
GROUP BY day_of_week, hour_of_day
ORDER BY day_of_week, hour_of_day;


--report_age_group_activity
with CTE1 as 
(select sender_age_group, count(*) as transaction_count_of_senders
from `Dataset.Cleaned_UPI_Transaction_2024`
group by sender_age_group
order by sender_age_group asc)
, CTE2 as (
select receiver_age_group, count(*) as transaction_count_of_receiver
from `Dataset.Cleaned_UPI_Transaction_2024`
group by receiver_age_group
order by receiver_age_group asc)

select sender_age_group as AGE_GROUP ,transaction_count_of_senders,transaction_count_of_receiver
from CTE1 a
join CTE2 b
on a.sender_age_group=b.receiver_age_group;


--report_device_network_usage
SELECT device_type,network_type,COUNT(*) AS transaction_count
FROM `Dataset.Cleaned_UPI_Transaction_2024`
GROUP BY device_type, network_type;

--report_merchant_categories
select merchant_category,count(*) as transaction_count
from `Dataset.Cleaned_UPI_Transaction_2024`
group by merchant_category
order by transaction_count desc;
