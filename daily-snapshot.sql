/* SQL query for returning records matching all tickets created on the current date */

SELECT
    t.id as 'ID',
    g.name as 'Campus',
    t.assignedto as 'Technician',
    t.subject as 'Issue',
    c.name as 'Category',
    DATE_FORMAT(t.createddate, "%Y-%m-%d") as 'Opened On:'

    FROM ticket t

        JOIN status s ON
            s.id = t.statusid

        JOIN category c ON
            c.id = t.categoryid

        JOIN groups g ON
            g.id = t.groupid
    
    -- Return only tickets created today
    WHERE DATE(t.createddate) = CURDATE()
