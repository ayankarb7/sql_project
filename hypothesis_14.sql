-- ============================================================
-- Гипотеза 14
-- ============================================================
-- Формулировка: Некоторые города имеют больше успешных сделок,
-- чем другие.
--
-- Вывод: города действительно отличаются (пусть даже на
-- единицы). Это может быть связано с уровнем спроса на
-- недвижимость в разных городах.

WITH city_deals AS (
    SELECT
        p.city,
        count(d.deal_id) AS total_deals
    FROM properties p
    JOIN listings l ON p.property_id = l.property_id
    LEFT JOIN deals d ON l.listing_id = d.listing_id
    GROUP BY p.city
)
SELECT *
FROM city_deals
ORDER BY total_deals DESC;
