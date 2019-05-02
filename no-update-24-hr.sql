SELECT
    t.id,
    t.subject as 'Issue',
    t.assignedto as 'Technician',
    -- u.lastname as 'techLastName',
    DATE_FORMAT(t.modifieddate, "%Y%m%d") as 'Last Updated',
    s.name as 'Status'

    FROM ticket t

        JOIN status s ON
            s.id = t.statusid

    WHERE s.name != 'Closed' OR 'Closed by system' OR 'Closed Projects'
            OR 'Resolved'

LIMIT 100