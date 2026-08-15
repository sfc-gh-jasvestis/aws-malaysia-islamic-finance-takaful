-- ============================================================================
-- 05_SEARCH.SQL — Cortex Search for Takaful Claims Intelligence
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA SEARCH;

CREATE OR REPLACE CORTEX SEARCH SERVICE SEARCH.INVESTIGATION_SEARCH
  ON NOTE_TEXT
  ATTRIBUTES CLAIM_ID, INVESTIGATOR, OUTCOME, REGION
  WAREHOUSE = TAKAFUL_WH
  TARGET_LAG = '1 hour'
AS (
  SELECT * FROM RAW.INVESTIGATION_NOTES
);
