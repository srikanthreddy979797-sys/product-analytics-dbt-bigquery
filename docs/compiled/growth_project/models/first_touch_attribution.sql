

select
    user_id,

    array_agg(campaign_source order by event_timestamp asc limit 1)[offset(0)]
        as first_source,

    array_agg(campaign_medium order by event_timestamp asc limit 1)[offset(0)]
        as first_medium

from `spherical-list-484512-m3`.`growth_dw`.`stg_raw_events`
group by user_id