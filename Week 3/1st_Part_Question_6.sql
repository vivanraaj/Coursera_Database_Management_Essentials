SELECT EventPlan.PlanNo,  COUNT(EventPlanLine.PlanNo), SUM(EventPlanLine.NumberFLD)
FROM EventPlanLine INNER JOIN EventPlan
ON EventPlanLine.PlanNo = EventPlan.PlanNo
GROUP BY EventPlan.PlanNo
HAVING COUNT(*) >= 1 ;