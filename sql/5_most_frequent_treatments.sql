--Which treatment types occur most frequently in the hospital dataset?

SELECT
    treatment_type,
    COUNT(treatment_id) AS total_treatments
FROM treatments
GROUP BY treatment_type
ORDER BY total_treatments DESC;

-- Insight:
-- Chemotherapy is the most frequent treatment with 49 records (24.5%).
-- X-Ray is the second most frequent with 41 records (20.5%).
-- MRI and Physiotherapy each have 36 records (18%).
-- Treatment frequency alone does not indicate profitability or resource demand.