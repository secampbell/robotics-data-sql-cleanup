-- Fix datetime formatting
UPDATE support_tickets
SET 
  submission_date = submission_date::DATE,
  resolution_date = resolution_date::DATE;

-- Optional check for 'Resolved' tickets missing resolution_date (confirmed - returned no results):
-- SELECT * FROM support_tickets WHERE ticket_status = 'Resolved' AND resolution_date IS NULL;
