1. Кардардын атын, шаарын чыгарыныз
    SELECT * FROM customers;
2. Кардарлардын олкосун (уникалдуу) чыгарыныз
    SELECT DISTINCT country FROM customers
3. Кардарлардын олкосунун (уникалдуу) санын чыгарыш керек
SELECT count(DISTINCT (country )) FROM customers
4.Мексикалык кардарларды чыгарыныз
SELECT * FROM cusomers WHERE country = 'MEXICO';
5. Айдиси#1 болгон кардардын шаарын, дарегин чыгарыныз
    SELECT city, address FROM customers WHERE id = 1;
6. Германиялык же Испаниялык кардарларды чыгарыныз
    SELECT * FROM customers WHERE country IN('Germany','Spain');
7. Кардарлардын олкосун алфавит менен, атын алфавиттин аягы менен сорттоп чыгарыныз
    SELECT * FROM customers ORDER BY country AND customerName DESC;
8. Дареги жазылбаган кардарларды чыгарыныз
    SELECT * FROM customers WHERE address = NULL;
9. Продуктулардын минимальный баасын чыгарыныз
    SELECT min(price) FROM products;
10. Канча продукт бар экенин чыгарыныз
    SELECT COUNT(*) FROM products;
11. Баш тамгасы ‘А’ башталган бардык кардарлардын атын чыгарыныз
    SELECT * FROM customers WHERE customerName LIKE 'a%'
12. Германиялык, Франциялык, Британиялык кардарларды чыгарыныз
SELECT * FROM customers WHERE country IN('Germany','France','England');
13. Поставщик менен бир олкодон болгон кардарларды чыгарыныз
    SELECT * FROM Customers, suppliers WHERE suppliers.country = customers.country;
14. 1996-жылкы жалпы заказдарды чыгарыныз
    SELECT * FROM orders WHERE orderDate BETWEEN '1996-1-1' AND '1996-12-31';