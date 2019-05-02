SELECT
    t.id as 'ID',
    t.assignedto as 'Technician',
    t.subject as 'Issue',
    DATE_FORMAT(t.createddate, "%Y-%m-%d") as 'Opened On:',
    s.name as 'Status'

    FROM ticket t

        JOIN status s ON
            s.id = t.statusid

    
    -- Return only tickets created today
    WHERE DATE(t.createddate) = CURDATE()
