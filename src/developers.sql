Выберите из таблицы developers записи с id равным 3, 5, 6, 10 и логином, равным 'eee', 'zzz' или 'ggg'.
    SELECT * FROM developers WHERE id IN(3,5,6,10) AND email LIKE '%.com';
-- Задача. Выберите из таблицы developers записи c зарплатой от 500 до 1500.
    SELECT FROM developers WHERE salary BETWEEN 500 AND 1500
-- Задача. Выберите из таблицы developers все записи так, чтобы вместо id было developersId, вместо login – developersLogin, вместо salary - developersSalary.
SELECT id as developerid, first_name, last_name,email as developerEmail,gender,country,salary,age,working_year FROM developers;
-- Найдите в таблице developers минимальный возраст.
SELECT min(age) FROM developers
-- Задача. Найдите в таблице developers суммарный возраст.
SELECT sum(age) FROM developers;
-- Задача. Вставьте в таблицу developers запись с полем date с текущим моментом времени в формате 'год-месяц-день часы:минуты:секунды'.
SELECT *, (now()::date,null,now()::time)as date FROM developers;
-- Задача. Вставьте в таблицу developers запись с полем date с текущей датой в формате 'год-месяц-день'.
-> SELECT *, (now()::date) as date FROM developers;
-- Задача. При выборке из таблицы developers запишите день, месяц и год в отдельные поля.
-> SELECT EXTRACT(day FROM working_year) as day, EXTRACT(month FROM working_year) as month, EXTRACT(year FROM working_year) as year FROM developers;
-- На BETWEEN
-- Выберите из таблицы developers записи c зарплатой от 1000 до 3000.
-> SELECT * FROM developers WHERE salary BETWEEN 1000 AND 3000;
-- Выберите из таблицы developers записи c id от 3 до 10 и зарплатой от 300 до 500.
-> SELECT * FROM developers WHERE id >= 3 AND id <= 10;
-- На AS
-- Выберите из таблицы developers все записи так, чтобы вместо id был developerId
-> SELECT id as developerId, first_name,last_name,email,gender,age,salary,working_year FROM developers;
-- На DISTINCT
-- Выберите из таблицы developers все записи так, чтобы туда попали только записи с разной зарплатой (без дублей).
-> SELECT DISTINCT salary FROM developers;
-- Получите SQL запросом все возрасты без дублирования.
-> SELECT DISTINCT(age) FROM developers;
-- На MIN и MAX
-- Найдите в таблице developers минимальную зарплату.
-> SELECT min9salary) FROM developers;
-- Найдите в таблице developers максимальную зарплату.
-> SELECT max(salary) FROM developers;
-- На SUM
--  Найдите в таблице workers суммарную зарплату.
-> SELECT sum(salary) as sum_of_salaries FROM developers;
--  Найдите в таблице developers суммарную зарплату для людей в возрасте от 21 до 25.
-> SELECT sum(salary) as salaries_between_21_&_25 FROM developers WHERE age BETWEEN 21 AND 25;
--  Найдите в таблице developers суммарную зарплату для id, равного 1, 2, 3 и 5.
-> SELECT sum(salary) as sum_of_salaries FROM developers WHERE id IN (1,2,3,5);
--  На AVG
--  Найдите в таблице developers среднюю зарплату.
-> SELECT avg(salary) as average_salary FROM developers;
--  Найдите в таблице workers средний возраст.
-> SELECT avg(age) as average_age FROM developers;
--  При выборке из таблицы workers получите первые 5 символов поля description. Показать решение.
-> SELECT LEFT(email,5) as first_five_letters_of_email FROM developers;
--  При выборке из таблицы workers получите последние 5 символов поля description. Показать решение.
-> SELECT RIGHT(email,5) as first_five_letters_of_email FROM developers;
--  При выборке из таблицы workers получите из поля description символы со второго по десятый. Показать решение.
-> SELECT SUBSTRING(email,2,10) FROM developers;