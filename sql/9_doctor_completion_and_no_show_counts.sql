--For each doctor, how many appointments were Completed and No-show, and what is their no-show rate among appointments with a final attendance outcome?

SELECT
    d.doctor_id,
    d.first_name,
    d.last_name,

    SUM(CASE WHEN a.status = 'Completed' THEN 1 ELSE 0 END)
        AS completed_appointments,

    SUM(CASE WHEN a.status = 'No-show' THEN 1 ELSE 0 END)
        AS no_show_appointments,

    SUM(CASE WHEN a.status = 'Completed' THEN 1 ELSE 0 END)
    +
    SUM(CASE WHEN a.status = 'No-show' THEN 1 ELSE 0 END)
        AS eligible_appointments,

    ROUND(
        SUM(CASE WHEN a.status = 'No-show' THEN 1 ELSE 0 END)
        * 100.0
        /
        NULLIF(
            SUM(CASE WHEN a.status = 'Completed' THEN 1 ELSE 0 END)
            +
            SUM(CASE WHEN a.status = 'No-show' THEN 1 ELSE 0 END),
            0
        ),
        2
    ) AS no_show_rate_pct

FROM doctors d
JOIN appointments a
    ON d.doctor_id = a.doctor_id

GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name

ORDER BY no_show_rate_pct DESC;

-- Insight:
-- Sarah Taylor (D005) has the highest no-show rate at 69.23% (9 of 13).
-- Sarah Smith (D009) has the second-highest no-show rate at 66.67%.
-- Jane Davis (D002) has the lowest no-show rate at 16.67% (1 of 6).
-- There are 52 no-show and 46 completed appointments.
-- The overall no-show rate among eligible outcomes is 53.06%.
-- Doctor-level rates should be interpreted alongside their sample sizes.
-- This analysis does not establish the causes of no-shows.