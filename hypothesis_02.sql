-- ============================================================
-- Гипотеза 2
-- ============================================================
-- Формулировка: Количество объявлений, созданных агентом,
-- влияет на количество сделок.
--
-- Вывод: большое количество объявлений не всегда приводит
-- к большему числу сделок. У некоторых агентов высокая активность
-- (много listings), но сравнительно низкое количество успешных сделок.

SELECT
    a.agent_id,
    a.full_name,
    count(DISTINCT l.listing_id) AS total_listings,
    count(DISTINCT d.deal_id) AS total_deals
FROM agents a
LEFT JOIN listings l ON a.agent_id = l.agent_id
LEFT JOIN deals d ON l.listing_id = d.listing_id
GROUP BY a.agent_id, a.full_name
ORDER BY total_listings DESC;
