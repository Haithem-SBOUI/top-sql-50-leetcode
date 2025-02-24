select max(num) num
from (
    select distinct num
    from MyNumbers
    group by num
    having count(num) = 1
) subq