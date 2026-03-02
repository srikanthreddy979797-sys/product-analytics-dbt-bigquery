

WITH acquisition AS (

    SELECT
        'Acquisition' AS stage,
        SUM(users_acquired) AS users
    FROM `spherical-list-484512-m3`.`growth_dw`.`marketing_roi`

),

activation AS (

    SELECT
        'Activation' AS stage,
        COUNT(DISTINCT user_id) AS users
    FROM `spherical-list-484512-m3`.`growth_dw`.`customer_360`

),

revenue AS (

    SELECT
        'Revenue' AS stage,
        COUNT(DISTINCT user_id) AS users
    FROM `spherical-list-484512-m3`.`growth_dw`.`customer_360`
    WHERE total_revenue > 0

),

funnel AS (

    SELECT * FROM acquisition
    UNION ALL
    SELECT * FROM activation
    UNION ALL
    SELECT * FROM revenue

)

SELECT
    stage,
    users,
    users / MAX(users) OVER() AS conversion_rate
FROM funnel