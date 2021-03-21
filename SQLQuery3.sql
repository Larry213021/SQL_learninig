use PRO_ACT
go

SELECT *
FROM(	
			(demographics$ 
			LEFT JOIN Svc$
		ON demographics$.subject_id = Svc$.subject_id		
			)
		LEFT JOIN AlsHistory$
		ON demographics$.subject_id = AlsHistory$.subject_id	
			)
ORDER BY demographics$.subject_id