--How much total billing amount is associated with each treatment type?

SELECT t.treatment_type,
       SUM(b.amount) AS total_amount
FROM treatments t
JOIN billing b ON t.treatment_id = b.treatment_id
GROUP BY t.treatment_type
ORDER BY total_amount DESC;


-- Insight:
-- Chemotherapy has the highest total billed amount: 128855.68.
-- MRI has the second-highest total billed amount: 116098.16.
-- ECG has the lowest total billed amount: 96224.24.
-- Total billed amount across all treatment types: 551249.85.
-- Billed amount is not necessarily the same as collected revenue.