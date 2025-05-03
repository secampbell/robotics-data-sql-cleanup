-- Fix due dates that came before invoice dates.
UPDATE invoices
SET due_date = invoice_date + INTERVAL '30 days'
WHERE due_date < invoice_date;
