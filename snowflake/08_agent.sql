-- ============================================================================
-- 08_AGENT.SQL — Cortex Agent for Takaful Claims Intelligence
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA APP;

CREATE OR REPLACE CORTEX AGENT APP.TAKAFUL_CLAIMS_AGENT
  COMMENT = 'Takaful Claims Intelligence AI Assistant'
  MODEL = 'claude-opus-4-8'
  TOOLS = (
    SEMANTIC_VIEW_TOOL(SEMANTIC_VIEW => 'ISLAMIC_TAKAFUL_CLAIMS.APP.TAKAFUL_CLAIMS_ANALYTICS'),    CORTEX_SEARCH_TOOL(CORTEX_SEARCH_SERVICE => 'ISLAMIC_TAKAFUL_CLAIMS.SEARCH.INVESTIGATION_SEARCH', TOOL_DESCRIPTION => 'Search documents for Islamic Finance information')
  )
  SYSTEM_PROMPT = 'You are the Takaful Claims Intelligence Agent for a Malaysian Takaful operator processing 15,000 claims. You help identify fraud, prioritize investigations, and generate summaries.';
