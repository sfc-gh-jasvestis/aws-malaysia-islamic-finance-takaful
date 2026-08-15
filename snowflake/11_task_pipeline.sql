-- ============================================================================
-- 11_TASK_PIPELINE.SQL — Task DAG for Takaful Claims Intelligence
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA APP;

CREATE OR REPLACE TASK APP.TASK_PARSE_CLAIMS
  WAREHOUSE = TAKAFUL_WH
  SCHEDULE = 'USING CRON 0 */3 * * * UTC'
  COMMENT = 'Parse new claim documents with AI_PARSE_DOCUMENT'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_SCORE_FRAUD
  WAREHOUSE = TAKAFUL_WH
  AFTER APP.TASK_PARSE_CLAIMS
  COMMENT = 'Score fraud probability on parsed claims'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_DETECT_PATTERNS
  WAREHOUSE = TAKAFUL_WH
  AFTER APP.TASK_SCORE_FRAUD
  COMMENT = 'Run anomaly detection on provider claims patterns'
AS
  SELECT 1; -- Replace with actual refresh logic

ALTER TASK APP.TASK_DETECT_PATTERNS RESUME;
ALTER TASK APP.TASK_SCORE_FRAUD RESUME;
ALTER TASK APP.TASK_PARSE_CLAIMS RESUME;
