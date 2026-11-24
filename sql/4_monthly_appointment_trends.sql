-- How does the number of appointments change month by month throughout 2023?

SELECT DATE_TRUNC('month', appointment_date) AS month,
       COUNT(appointment_id) AS total_appointments
FROM appointments
GROUP BY DATE_TRUNC('month', appointment_date)
ORDER BY month;


-- Insight:
-- April had the highest appointment volume with 25 appointments.
-- September had the lowest appointment volume with 11 appointments.
-- Monthly appointment volume fluctuated throughout 2023.
-- The average monthly appointment volume was approximately 16.7.
-- The dataset alone does not explain the causes of monthly fluctuations.