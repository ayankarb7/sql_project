-- ============================================================
-- Первичный анализ: обзор структуры таблиц
-- ============================================================
-- Цель: изучить состав полей и типы данных в каждой таблице,
-- чтобы понять структуру базы данных перед формированием гипотез.

SELECT *
FROM agents
LIMIT 5;

SELECT *
FROM clients
LIMIT 5;

SELECT *
FROM deals
LIMIT 5;

SELECT *
FROM listings
LIMIT 5;

SELECT *
FROM properties
LIMIT 5;

SELECT *
FROM viewings
LIMIT 5;
