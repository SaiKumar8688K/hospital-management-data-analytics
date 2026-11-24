--Which medical specializations handle the highest number of appointments?

SELECT d.specialization,
       COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.specialization
ORDER BY total_appointments DESC;

-- Insight:
-- Pediatrics accounts for 49% of all appointments.
-- Dermatology accounts for 35% of all appointments.
-- Oncology accounts for 16% of all appointments.
-- Pediatrics has the highest appointment volume in this dataset.
-- Appointment volume alone does not establish staffing adequacy.