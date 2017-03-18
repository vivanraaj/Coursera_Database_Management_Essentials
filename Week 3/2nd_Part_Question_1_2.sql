SELECT PlanNo,EventPlan.EventNo,WorkDate,Activity
FROM EventPlan 
INNER JOIN EventRequest ON EventPlan.EventNo = EventRequest.EventNo
INNER JOIN Facility ON EventRequest.FacNo = Facility.FacNo
WHERE WorkDate BETWEEN '2013-12-01' AND '2013-12-31'
AND FacName = "Basketball arena" ;
