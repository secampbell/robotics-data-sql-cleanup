-- Set delivery_delay_days, ensuring no negative values.
UPDATE shipments
SET delivery_delay_days = GREATEST(0, actual_delivery - estimated_delivery);
