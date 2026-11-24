--What is the number of bills in each payment status, and what percentage of all bills does each status represent?

SELECT payment_status,
       COUNT(*) AS total_bills,
       ROUND(
           COUNT(*) * 100.0 / (SELECT COUNT(*) FROM billing),
           2
       ) AS percentage
FROM billing
GROUP BY payment_status;

-- Insight:
-- 64 bills (32%) are marked Paid.
-- 69 bills (34.5%) are marked Pending.
-- 67 bills (33.5%) are marked Failed.
-- 68% of bill records are Pending or Failed.
-- Bill counts alone do not indicate the monetary amount outstanding.