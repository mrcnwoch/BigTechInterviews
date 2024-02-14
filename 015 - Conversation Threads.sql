Select distinct
  case when sender_id < receiver_id then sender_id else receiver_id end as sender_id,
  case when sender_id < receiver_id then receiver_id else sender_id end as receiver_id
from messenger_sends
order by sender_id, receiver_id 