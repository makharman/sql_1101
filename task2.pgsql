--Создать функцию, которая должна возвращать самого молодого и старшего из сотрудников


CREATE OR REPLACE FUNCTION youngest_employee()
RETURNS TABLE (
    youngest_employee_last_name VARCHAR,
    youngest_employee_birth_date DATE
) AS $$
BEGIN
    RETURN QUERY
        SELECT last_name, birth_date
        FROM employees
        ORDER BY birth_date DESC
        LIMIT 1;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM youngest_employee();


CREATE OR REPLACE FUNCTION oldest_employee()
RETURNS TABLE (
    oldest_employee_last_name VARCHAR,
    oldest_employee_birth_date DATE
) AS $$
BEGIN
    RETURN QUERY
        SELECT last_name, birth_date
        FROM employees
        ORDER BY birth_date
        LIMIT 1;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM oldest_employee();