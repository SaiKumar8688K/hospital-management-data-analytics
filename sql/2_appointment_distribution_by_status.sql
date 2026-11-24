--How many appointments fall under each appointment status?

SELECT status,
       COUNT(appointment_id) AS total_appointments
FROM appointments
GROUP BY status
ORDER BY total_appointments DESC;

-- Insight:
-- No-show appointments represent 26% of all appointment records.
-- Completed appointments represent 23% of all appointment records.
-- No-show is the largest status category in this dataset.
-- Scheduled appointments may not yet have a final outcome.