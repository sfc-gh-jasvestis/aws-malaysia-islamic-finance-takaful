-- ============================================================================
-- 10_ALERTS_NOTIFICATIONS.SQL — Alerts for Takaful Claims Intelligence
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA APP;

-- Notification integration (email)
CREATE OR REPLACE NOTIFICATION INTEGRATION aws_malaysia_islamic_finance_takaful_EMAIL_INT
  TYPE = EMAIL
  ENABLED = TRUE
  ALLOWED_RECIPIENTS = ('<YOUR_EMAIL>');

-- Alert: HIGH_FRAUD_CLAIM_ALERT
CREATE OR REPLACE ALERT APP.HIGH_FRAUD_CLAIM_ALERT
  WAREHOUSE = TAKAFUL_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'High-probability fraud claim requires immediate investigation'
IF (EXISTS (
  SELECT 1 FROM CURATED.CLAIMS_DASHBOARD
  WHERE 1=1 -- Condition: New claim fraud probability > 0.85
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_malaysia_islamic_finance_takaful_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Takaful Claims Intelligence: High-probability fraud claim requires immediate investigation',
    'High-probability fraud claim requires immediate investigation'
  );

ALTER ALERT APP.HIGH_FRAUD_CLAIM_ALERT RESUME;

-- Alert: PROVIDER_ANOMALY_ALERT
CREATE OR REPLACE ALERT APP.PROVIDER_ANOMALY_ALERT
  WAREHOUSE = TAKAFUL_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Provider claims pattern anomaly detected'
IF (EXISTS (
  SELECT 1 FROM CURATED.CLAIMS_DASHBOARD
  WHERE 1=1 -- Condition: Provider claims volume exceeds 3 standard deviations
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_malaysia_islamic_finance_takaful_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Takaful Claims Intelligence: Provider claims pattern anomaly detected',
    'Provider claims pattern anomaly detected'
  );

ALTER ALERT APP.PROVIDER_ANOMALY_ALERT RESUME;

