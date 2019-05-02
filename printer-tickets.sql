SELECT
    t.id,
    t.subject as 'Issue',
    t.note as 'Description',
    t.assignedto as 'Technician',
    t.modifieddate as 'Last Updated',
    s.name as 'Status'

    FROM ticket t

        JOIN status s ON
            s.id = t.statusid

    WHERE t.note LIKE "%printer%" 

    LIMIT 100