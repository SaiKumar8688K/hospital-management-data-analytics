-- Hospital Management Analytics Project

-- Question 1: How many appointments does each doctor handle?
SELECT 
    d.doctor_id,
    d.first_name,
    d.last_name,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY total_appointments DESC;

-- Insight:
-- Sarah Taylor (D005) has the highest appointment count (29).
-- Robert Davis (D007) has the lowest appointment count (13).
-- The difference is 16 appointments.
-- Appointment counts alone do not establish workload or capacity.

