SELECT EventPlanLine.PlanNo, LineNo, ResName,NumberFld,LocName,TimeStart,TimeEnd
FROM EventPlanLine
INNER JOIN EventPlan ON EventPlanLine.PlanNo = EventPlan.PlanNo
INNER JOIN ResourceTbl ON EventPlanLine.ResNo = ResourceTbl.ResNo
INNER JOIN Location ON EventPlanLine.LocNo = Location.LocNo
INNER JOIN Facility ON Location.FacNo = Facility.FacNo
WHERE WorkDate BETWEEN '2013-10-01' AND '2013-12-31'
AND FacName = "Basketball arena" 
AND Activity = "Operation";
