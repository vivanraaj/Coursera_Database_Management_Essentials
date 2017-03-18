SELECT EventRequest.EventNo, DateHeld, Status, EstCost
FROM EventRequest 
INNER JOIN Facility ON EventRequest.FacNo = Facility.FacNo
INNER JOIN EventPlan ON EventRequest.EventNo = EventPlan.EventNo
INNER JOIN Employee ON EventPlan.EmpNo = Employee.EmpNo
WHERE DateHeld BETWEEN '2013-10-01' AND '2013-12-31'
AND FacName = "Basketball arena"
AND EmpName = "Mary Manager" ;

