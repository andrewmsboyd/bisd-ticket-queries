/* SQL query for returning records matching all tickets created on the current date */

SELECT
    t.id as 'ID',
    t.assignedto as 'Technician',
    t.subject as 'Issue',
    c.name as 'Category',
    DATE_FORMAT(t.createddate, "%Y-%m-%d") as 'Opened On:',
    s.name as 'Status'

    FROM ticket t

        JOIN status s ON
            s.id = t.statusid

        JOIN category c ON
            c.id = t.categoryid

    
    -- Return only tickets created today
    WHERE DATE(t.createddate) = CURDATE()
