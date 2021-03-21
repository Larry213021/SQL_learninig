use PRO_ACT
go

SELECT *
FROM(	
		(
			(
				(
					(demographics$ 
					LEFT JOIN DeathData$
					ON demographics$.subject_id = DeathData$.subject_id	
					)
		LEFT JOIN Treatment$
		ON demographics$.subject_id = Treatment$.subject_id
					)
		LEFT JOIN proact$
		ON demographics$.subject_id = proact$.subject_id
				)
		LEFT JOIN Riluzole$
		ON demographics$.subject_id = Riluzole$.subject_id
			)
		LEFT JOIN FamilyHistory$
		ON demographics$.subject_id = FamilyHistory$.subject_id
			)
ORDER BY demographics$.subject_id