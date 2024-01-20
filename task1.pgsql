-- Создать функцию, которая должна возвращать среднюю цену продуктов

CREATE OR REPLACE FUNCTION average_price()
RETURNS REAL AS $$
DECLARE
    avg_price REAL;
BEGIN
    SELECT AVG(unit_price) INTO avg_price FROM products;
    RETURN avg_price;
END;
$$ LANGUAGE plpgsql;

SELECT average_price();