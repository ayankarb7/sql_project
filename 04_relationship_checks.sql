-- ============================================================
-- Проверка целостности связей между таблицами (LEFT JOIN)
-- ============================================================
-- Вывод: записей без соответствующих связей между таблицами
-- не выявлено, что подтверждает целостность базы данных.

-- listings без соответствующего property
SELECT l.*
FROM listings l
LEFT JOIN properties p ON l.property_id = p.property_id
WHERE p.property_id IS NULL;

-- listings без соответствующего agent
SELECT l.*
FROM listings l
LEFT JOIN agents a ON l.agent_id = a.agent_id
WHERE a.agent_id IS NULL;

-- listings без соответствующего seller (client)
SELECT l.*
FROM listings l
LEFT JOIN clients c ON l.seller_id = c.client_id
WHERE c.client_id IS NULL;

-- viewings без соответствующего listing
SELECT v.*
FROM viewings v
LEFT JOIN listings l ON v.listing_id = l.listing_id
WHERE l.listing_id IS NULL;

-- viewings без соответствующего client
SELECT v.*
FROM viewings v
LEFT JOIN clients c ON v.client_id = c.client_id
WHERE c.client_id IS NULL;

-- deals без соответствующего listing
SELECT d.*
FROM deals d
LEFT JOIN listings l ON d.listing_id = l.listing_id
WHERE l.listing_id IS NULL;

-- deals без соответствующего buyer (client)
SELECT d.*
FROM deals d
LEFT JOIN clients c ON d.buyer_id = c.client_id
WHERE c.client_id IS NULL;
