-- Drop user_agent and add referral_source column
ALTER TABLE website_interactions DROP COLUMN user_agent;
ALTER TABLE website_interactions ADD COLUMN referral_source TEXT;

-- Populate referral_source with skewed random logic
UPDATE website_interactions
SET referral_source = CASE
    WHEN RANDOM() < 0.30 THEN 'Direct Visit'
    WHEN RANDOM() < 0.55 THEN 'Referred by Sales Rep'
    WHEN RANDOM() < 0.70 THEN 'TradeShowConnect.com'
    WHEN RANDOM() < 0.80 THEN 'RobotWorld.com'
    WHEN RANDOM() < 0.84 THEN 'LinkedIn'
    WHEN RANDOM() < 0.87 THEN 'Twitter'
    WHEN RANDOM() < 0.89 THEN 'Google Ads'
    WHEN RANDOM() < 0.91 THEN 'Email Newsletter'
    WHEN RANDOM() < 0.93 THEN 'FutureTech.net'
    WHEN RANDOM() < 0.95 THEN 'IndustrialSupply.com'
    WHEN RANDOM() < 0.96 THEN 'USR-Today.com'
    WHEN RANDOM() < 0.97 THEN 'Robotics Weekly'
    WHEN RANDOM() < 0.98 THEN 'AIIndustryForum.org'
    WHEN RANDOM() < 0.99 THEN 'AutomationDigest.net'
    ELSE 'TechInsights.co'
END;
