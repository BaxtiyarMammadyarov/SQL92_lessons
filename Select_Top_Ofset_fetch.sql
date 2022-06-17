

SELECT
		TOP(5) *
FROM 
	AdventureWorks2019.HumanResources.Department
--WHERE



SELECT
		TOP(5) *
FROM 
	AdventureWorks2019.HumanResources.Employee
--WHERE


SELECT
		TOP(5)
	    HE.LoginID,
		HE.BusinessEntityID,
		HE.JobTitle,
		HE.BirthDate
FROM 
	AdventureWorks2019.HumanResources.Employee HE
--WHERE


SELECT
		TOP(5)
	    HE.LoginID,
		HE.BusinessEntityID,
		HE.JobTitle,
		HE.BirthDate,
		HE.Gender
FROM 
	AdventureWorks2019.HumanResources.Employee HE
WHERE HE.Gender='F';


SELECT 
	TOP(10)
	PP.FirstName,
	PP.LastName,
	PP.PersonType,
	PP.EmailPromotion

FROM 
	AdventureWorks2019.Person.Person PP
ORDER BY PP.EmailPromotion DESC;


SELECT 
	TOP(10)
	PP.FirstName +' '+PP.LastName FullName,
	PP.PersonType,
	PP.EmailPromotion

FROM 
	AdventureWorks2019.Person.Person PP
ORDER BY PP.EmailPromotion DESC;

SELECT 
	TOP(10)
	PP.FirstName +' '+PP.LastName FullName,
	PP.PersonType,
	PP.EmailPromotion

FROM 
	AdventureWorks2019.Person.Person PP
ORDER BY PP.LastName DESC;


SELECT 
   TOP(3) * 

FROM 
	AdventureWorks2019.Production.Product PRP
WHERE PRP.ListPrice>0;

SELECT 
   PRP.Name,
   PRP.ListPrice,
   PRP.StandardCost,
   PRP.Color

FROM 
	AdventureWorks2019.Production.Product PRP
--WHERE PRP.ListPrice>0;
ORDER BY PRP.ListPrice DESC
OFFSET 5 ROWS;

SELECT 
   PRP.Name,
    PRP.Color,
   PRP.ListPrice,
   PRP.StandardCost,
   PRP.ListPrice- PRP.StandardCost Profit
FROM 
	AdventureWorks2019.Production.Product PRP
--WHERE PRP.ListPrice>0;
ORDER BY PRP.ListPrice DESC
OFFSET 5 ROWS;


SELECT 
   PRP.Name,
    PRP.Color,
   PRP.ListPrice,
   PRP.StandardCost,
   PRP.ListPrice- PRP.StandardCost Profit
FROM 
	AdventureWorks2019.Production.Product PRP
--WHERE PRP.ListPrice>0;
ORDER BY PRP.ListPrice DESC
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

SELECT 
   PRP.Name,
    PRP.Color,
   PRP.ListPrice,
   PRP.StandardCost,
   PRP.ListPrice- PRP.StandardCost Profit
FROM 
	AdventureWorks2019.Production.Product PRP
WHERE PRP.ListPrice<500
ORDER BY PRP.ListPrice DESC
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

