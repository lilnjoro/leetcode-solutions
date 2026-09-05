SELECT email AS Email
FROM(
    SELECT email, COUNT(email) AS num
    FROM Person
    GROUP BY email
) AS sub
WHERE num > 1;
