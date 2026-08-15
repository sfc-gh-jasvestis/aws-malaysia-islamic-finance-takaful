-- ============================================================================
-- 03_STAGING.SQL — Generate synthetic data for Takaful Claims Intelligence
-- Country: MALAYSIA | Currency: MYR
-- ============================================================================
USE DATABASE ISLAMIC_TAKAFUL_CLAIMS;
USE SCHEMA RAW;

-- Data generation scripts are demo-specific.
-- See the handcrafted SQL in the aws-malaysia-semiconductor-yield demo for
-- the full pattern: GENERATOR + UNIFORM + LATERAL for distribution,
-- Cortex Complete for text generation, engineered key demo numbers.

-- Target row counts:
-- CLAIMS: 15,000 rows — Takaful claims across family and general segments
-- POLICYHOLDERS: 50,000 rows — Takaful participants (policyholders) profiles
-- INVESTIGATION_NOTES: 3,000 rows — Claims investigation notes and adjuster reports
-- CLAIM_DOCUMENTS: 8,000 rows — Scanned claim forms, medical reports, and receipts
-- PROVIDER_NETWORK: 500 rows — Panel hospitals, clinics, and workshops in network
