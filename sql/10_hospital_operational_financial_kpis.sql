--Can we generate a single-row hospital KPI summary showing overall operational performance and billing performance?

WITH appointment_kpis AS (
    SELECT
        COUNT(*) AS total_appointments,

        SUM(CASE
            WHEN status = 'Completed' THEN 1
            ELSE 0
        END) AS completed_appointments,

        SUM(CASE
            WHEN status = 'No-show' THEN 1
            ELSE 0
        END) AS no_show_appointments,

        SUM(CASE
            WHEN status = 'Cancelled' THEN 1
            ELSE 0
        END) AS cancelled_appointments,

        ROUND(
            SUM(CASE
                WHEN status = 'Completed' THEN 1
                ELSE 0
            END) * 100.0 / NULLIF(COUNT(*), 0),
            2
        ) AS completion_rate_pct,

        ROUND(
            SUM(CASE
                WHEN status = 'No-show' THEN 1
                ELSE 0
            END) * 100.0
            /
            NULLIF(
                SUM(CASE
                    WHEN status IN ('Completed', 'No-show') THEN 1
                    ELSE 0
                END),
                0
            ),
            2
        ) AS no_show_rate_pct

    FROM appointments
),

billing_kpis AS (
    SELECT
        SUM(amount) AS total_billed_amount,

        SUM(CASE
            WHEN payment_status = 'Paid' THEN amount
            ELSE 0
        END) AS paid_billing_amount

    FROM billing
)

SELECT
    a.total_appointments,
    a.completed_appointments,
    a.no_show_appointments,
    a.cancelled_appointments,
    a.completion_rate_pct,
    a.no_show_rate_pct,
    b.total_billed_amount,
    b.paid_billing_amount

FROM appointment_kpis a
CROSS JOIN billing_kpis b;


-- Insight:
-- Total appointment records: 200.
-- Completed appointments: 46 (23.00% of all records).
-- No-show appointments: 52.
-- Cancelled appointments: 51.
-- No-show rate among Completed + No-show appointments: 53.06%.
-- Total billed amount: 551249.85.
-- Billing amount marked Paid: 173424.90.
-- Operational and billing KPIs are descriptive metrics.
-- These metrics alone do not establish the causes of performance patterns.