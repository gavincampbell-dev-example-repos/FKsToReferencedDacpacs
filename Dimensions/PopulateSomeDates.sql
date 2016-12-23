/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS (SELECT * FROM DimDate)
BEGIN
WITH t as (
	SELECT CAST('20160101' as DATE) as d
	UNION ALL
	SELECT DATEADD(day, 1, d) FROM t
	WHERE DATEADD(day, 1, d) <= CAST('20260101' as DATE)
	)
INSERT INTO DimDate(theDate)
SELECT d from t OPTION (MAXRECURSION 10000);
END