SELECT EventRequest.EventNo, dateheld, count(*) AS no_eventplans
FROM EventRequest INNER JOIN EventPlan 
ON EventRequest.EventNo = EventPlan.EventNo
AND WorkDate BETWEEN '2013-12-01' AND '2013-12-31'
GROUP BY EventNo
HAVING no_eventplans > 1;
