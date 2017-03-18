SELECT eventno,dateauth,status 
FROM eventrequest
WHERE status IN ('Approved','Denied')
AND dateauth BETWEEN '2013-07-01' AND '2013-07-31';