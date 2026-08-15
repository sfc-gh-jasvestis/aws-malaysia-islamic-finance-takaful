-- ============================================================================
-- Takaful Claims Intelligence
-- AI-powered claims processing for Malaysia's Takaful operators — AI_PARSE_DOCUMENT digitizes claim forms, ML.CLASSIFICATION scores fraud risk, and Cortex Complete generates investigation summaries.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS ISLAMIC_TAKAFUL_CLAIMS;
CREATE WAREHOUSE IF NOT EXISTS TAKAFUL_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE TAKAFUL_WH;
