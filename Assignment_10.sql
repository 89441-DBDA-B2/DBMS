1. Write a procedure that computes the perimeter and the area of a
rectangle. Define your own values for the length and width. (Assuming
that L and W are the length and width of the rectangle, Perimeter =
2*(L+W) and Area = L*W.


DELIMITER $$

CREATE PROCEDURE calc_rectangle()
BEGIN
    DECLARE length INT DEFAULT 10;
    DECLARE width INT DEFAULT 5;
    DECLARE perimeter INT;
    DECLARE area INT;

    SET perimeter = 2 * (length + width);
    SET area = length * width;

    SELECT CONCAT('Perimeter: ', perimeter) AS Result;
    SELECT CONCAT('Area: ', area) AS Result;
END$$

DELIMITER ;



2. Write a procedure that declares an integer variable called num,
assigns a value to it, and computes and inserts into the temp table
the value of the variable itself, its square, and its cube.


DELIMITER $$

CREATE PROCEDURE insert_num_square_cube()
BEGIN
    DECLARE num INT DEFAULT 4;
    DECLARE square INT;
    DECLARE cube INT;

    SET square = POW(num, 2);
    SET cube = POW(num, 3);

    INSERT INTO temp_table (num, square, cube)
    VALUES (num, square, cube);
END$$

DELIMITER ;

3.Create a procedure to Convert a temperature in Fahrenheit (F) to its
equivalent in Celsius (C) and vice versa. The required formulae are:-
C= (F-32)*5/9 F= 9/5*C + 32
DELIMITER $$

CREATE PROCEDURE convert_temp()
BEGIN
    DECLARE fahrenheit FLOAT DEFAULT 98.6;
    DECLARE celsius FLOAT;
    DECLARE back_to_fahrenheit FLOAT;

    SET celsius = (fahrenheit - 32) * 5 / 9;
    SET back_to_fahrenheit = (9 / 5) * celsius + 32;

    SELECT CONCAT('Fahrenheit to Celsius: ', ROUND(celsius, 2)) AS Result;
    SELECT CONCAT('Celsius back to Fahrenheit: ', ROUND(back_to_fahrenheit, 2)) AS Result;
END$$

DELIMITER ;



4.Create a procedure to Convert a number of inches into yards, feet,
and inches. For example, 124 inches equals 3 yards, 1 foot, and 4
inches.

DELIMITER $$

CREATE PROCEDURE convert_temp()
BEGIN
    DECLARE fahrenheit FLOAT DEFAULT 98.6;
    DECLARE celsius FLOAT;
    DECLARE back_to_fahrenheit FLOAT;

    SET celsius = (fahrenheit - 32) * 5 / 9;
    SET back_to_fahrenheit = (9 / 5) * celsius + 32;

    SELECT CONCAT('Fahrenheit to Celsius: ', ROUND(celsius, 2)) AS Result;
    SELECT CONCAT('Celsius back to Fahrenheit: ', ROUND(back_to_fahrenheit, 2)) AS Result;
END$$

DELIMITER ;


5. Your block should read in two real numbers and tell whether the
product of the two numbers is equal to or greater than 100.
DELIMITER $$

CREATE PROCEDURE check_product()
BEGIN
    DECLARE num1 FLOAT DEFAULT 10;
    DECLARE num2 FLOAT DEFAULT 11;
    DECLARE product FLOAT;

    SET product = num1 * num2;

    IF product >= 100 THEN
        SELECT CONCAT('Product is greater than or equal to 100: ', product) AS Result;
    ELSE
        SELECT CONCAT('Product is less than 100: ', product) AS Result;
    END IF;
END$$

DELIMITER ;


