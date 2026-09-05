-- ============================================================
-- Количество строк в каждой таблице
-- ============================================================
-- Цель: оценить объём данных и понять, насколько они подходят
-- для дальнейшего анализа.

SELECT count(*) AS total_agents
FROM agents;

SELECT count(*) AS total_clients
FROM clients;

SELECT count(*) AS total_deals
FROM deals;

SELECT count(*) AS total_listings
FROM listings;

SELECT count(*) AS total_properties
FROM properties;

SELECT count(*) AS total_viewings
FROM viewings;
