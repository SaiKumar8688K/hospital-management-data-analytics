--What is the total billing amount associated with each hospital branch?

SELECT d.hospital_branch,
       SUM(b.amount) AS total_amount
FROM billing b
JOIN treatments t ON b.treatment_id = t.treatment_id
JOIN appointments a ON t.appointment_id = a.appointment_id
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY hospital_branch
ORDER BY total_amount DESC;

-- Insight:
-- Central Hospital has the highest total billed amount: 229039.44.
-- Eastside Clinic has total billed amount of 162031.10.
-- Westside Clinic has the lowest total billed amount: 160179.31.
-- Central Hospital accounts for approximately 41.6% of total billed amount.
-- Branch totals reconcile with the overall billed amount of 551249.85.
-- Billed amount does not necessarily represent collected revenue.