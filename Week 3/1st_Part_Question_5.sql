SELECT locno,locname 
FROM Location INNER JOIN Facility ON Location.FacNo = Facility.FacNo
WHERE FacName = "Basketball arena" ;