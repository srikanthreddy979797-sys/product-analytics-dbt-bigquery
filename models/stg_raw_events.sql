select *
from {{ source('bank_dw', 'raw_events') }}
