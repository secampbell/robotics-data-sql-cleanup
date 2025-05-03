-- Replace 'n/a' in industry with 'General Manufacturing'
UPDATE customers
SET industry = 'General Manufacturing'
WHERE TRIM(LOWER(industry)) = 'n/a';