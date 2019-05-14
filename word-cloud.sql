/* SQL Query for returning all long descritptions from each ticket opened
within the last two years. This data will be fed to an application that will
generate a word cloud. */

SELECT
    t.subject,
    t.note

    FROM

    (SELECT
        DATE_FORMAT(t.createddate, "%Y-%m-%d"),
        t.subject,
        t.note

        FROM ticket t

        WHERE t.createddate >= "2018-07-01" AND t.createddate <= "2019-06-30"
    ) t