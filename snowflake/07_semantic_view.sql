-- ============================================================================
-- 07_SEMANTIC_VIEW.SQL — Semantic View for Takaful Claims Intelligence
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA APP;

CREATE OR REPLACE SEMANTIC VIEW APP.TAKAFUL_CLAIMS_ANALYTICS
  COMMENT = 'Takaful claims, fraud detection, and investigation analytics'
AS
  TABLES (
    CURATED.CLAIMS_DASHBOARD AS claims_dashboard,CURATED.FRAUD_SCORING AS fraud_scoring,CURATED.PROVIDER_ANALYTICS AS provider_analytics,CURATED.INVESTIGATION_QUEUE AS investigation_queue
  );
