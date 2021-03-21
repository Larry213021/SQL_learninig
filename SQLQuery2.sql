use PRO_ACT
go

SELECT *
FROM(	
	(
		(
			(
				(
					(
		(VitalSigns$
		LEFT JOIN AdverseEvents$
		ON VitalSigns$.subject_id = AdverseEvents$.subject_id	
		)
		LEFT JOIN Fvc$
		ON VitalSigns$.subject_id = Fvc$.subject_id
		)
		LEFT JOIN Labs$
		ON VitalSigns$.subject_id = Labs$.subject_id
		)
		LEFT JOIN ConMeds$
		ON VitalSigns$.subject_id = ConMeds$.subject_id
		)
		LEFT JOIN Svc$
		ON VitalSigns$.subject_id = Svc$.subject_id
		)
		LEFT JOIN alsfrs$
		ON VitalSigns$.subject_id = alsfrs$.subject_id
		)
		LEFT JOIN AlsHistory$
		ON VitalSigns$.subject_id = AlsHistory$.subject_id
		)
ORDER BY VitalSigns$.subject_id