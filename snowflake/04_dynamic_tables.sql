-- ============================================================================
-- 04_DYNAMIC_TABLES.SQL — Curated layer for Takaful Claims Intelligence
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA CURATED;

-- CLAIMS_DASHBOARD: Real-time claims metrics: volume, value, processing time, fraud rate
-- Source: CLAIMS, POLICYHOLDERS
CREATE OR REPLACE DYNAMIC TABLE CURATED.CLAIMS_DASHBOARD
  TARGET_LAG = '5 minutes'
  WAREHOUSE = TAKAFUL_WH
AS
SELECT * FROM RAW.CLAIMS;
-- TODO: Replace with actual join/aggregation logic per demo

-- FRAUD_SCORING: Claims ranked by ML fraud probability with risk factors
-- Source: CLAIMS, POLICYHOLDERS, PROVIDER_NETWORK
CREATE OR REPLACE DYNAMIC TABLE CURATED.FRAUD_SCORING
  TARGET_LAG = '5 minutes'
  WAREHOUSE = TAKAFUL_WH
AS
SELECT * FROM RAW.CLAIMS;
-- TODO: Replace with actual join/aggregation logic per demo

-- PROVIDER_ANALYTICS: Provider-level claims patterns and anomaly flags
-- Source: CLAIMS, PROVIDER_NETWORK
CREATE OR REPLACE DYNAMIC TABLE CURATED.PROVIDER_ANALYTICS
  TARGET_LAG = '5 minutes'
  WAREHOUSE = TAKAFUL_WH
AS
SELECT * FROM RAW.CLAIMS;
-- TODO: Replace with actual join/aggregation logic per demo

-- INVESTIGATION_QUEUE: Prioritized investigation queue with AI-generated summaries
-- Source: CLAIMS, INVESTIGATION_NOTES
CREATE OR REPLACE DYNAMIC TABLE CURATED.INVESTIGATION_QUEUE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = TAKAFUL_WH
AS
SELECT * FROM RAW.CLAIMS;
-- TODO: Replace with actual join/aggregation logic per demo

