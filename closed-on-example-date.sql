SELECT
    t.id,
    t.subject as 'Issue',
    s.name as 'Status'

    FROM ticket t

        JOIN status s ON
            s.id = t.statusid

    WHERE t.modifieddate LIKE '2018-11-15%' AND s.name = 'Closed'

ORDER BY t.id DESC