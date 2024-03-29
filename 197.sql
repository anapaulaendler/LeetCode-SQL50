select W1.id
from Weather W1
join Weather W2
on W1.recordDate = date_add(W2.recordDate, interval 1 day) 
where W1.temperature > W2.temperature