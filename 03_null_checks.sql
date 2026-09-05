-- ============================================================
-- Проверка данных на наличие NULL-значений
-- ============================================================
-- Вывод: во всех таблицах пропущенные значения отсутствуют.

SELECT
    count(*) AS total_rows,
    sum(case when agent_id is null then 1 else 0 end) AS null_agent_id,
    sum(case when full_name is null then 1 else 0 end) AS null_full_name,
    sum(case when experience_years is null then 1 else 0 end) AS null_experience_years,
    sum(case when office is null then 1 else 0 end) AS null_office,
    sum(case when phone is null then 1 else 0 end) AS null_phone
FROM agents;

SELECT
    count(*) AS total_rows,
    sum(case when client_id is null then 1 else 0 end) AS null_client_id,
    sum(case when full_name is null then 1 else 0 end) AS null_full_name,
    sum(case when phone is null then 1 else 0 end) AS null_phone,
    sum(case when email is null then 1 else 0 end) AS null_email,
    sum(case when client_type is null then 1 else 0 end) AS null_client_type
FROM clients;

SELECT
    count(*) AS total_rows,
    sum(case when deal_id is null then 1 else 0 end) AS null_deal_id,
    sum(case when listing_id is null then 1 else 0 end) AS null_listing_id,
    sum(case when buyer_id is null then 1 else 0 end) AS null_buyer_id,
    sum(case when sold_price is null then 1 else 0 end) AS null_sold_price,
    sum(case when agent_commission is null then 1 else 0 end) AS null_agent_comm
FROM deals;

SELECT
    count(*) AS total_rows,
    sum(case when listing_id is null then 1 else 0 end) AS null_listing_id,
    sum(case when property_id is null then 1 else 0 end) AS null_property_id,
    sum(case when agent_id is null then 1 else 0 end) AS null_agent_id,
    sum(case when seller_id is null then 1 else 0 end) AS null_seller_id,
    sum(case when status is null then 1 else 0 end) AS null_status
FROM listings;

SELECT
    count(*) AS total_rows,
    sum(case when property_id is null then 1 else 0 end) AS null_property_id,
    sum(case when type is null then 1 else 0 end) AS null_type,
    sum(case when city is null then 1 else 0 end) AS null_city,
    sum(case when district is null then 1 else 0 end) AS null_district,
    sum(case when address is null then 1 else 0 end) AS null_address,
    sum(case when area is null then 1 else 0 end) AS null_area,
    sum(case when rooms is null then 1 else 0 end) AS null_rooms,
    sum(case when price is null then 1 else 0 end) AS null_price,
    sum(case when build_year is null then 1 else 0 end) AS null_build_year,
    sum(case when status is null then 1 else 0 end) AS null_status
FROM properties;

SELECT
    count(*) AS total_rows,
    sum(case when viewing_id is null then 1 else 0 end) AS null_viewing_id,
    sum(case when listing_id is null then 1 else 0 end) AS null_listing_id,
    sum(case when client_id is null then 1 else 0 end) AS null_client_id,
    sum(case when agent_id is null then 1 else 0 end) AS null_agent_id,
    sum(case when result is null then 1 else 0 end) AS null_result
FROM viewings;
