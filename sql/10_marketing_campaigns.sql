-- Bring conversion counts in line (80–90% of impressions)
UPDATE marketing_campaigns
SET conversions = ROUND(impressions * (0.80 + RANDOM() * 0.10))::INTEGER;
