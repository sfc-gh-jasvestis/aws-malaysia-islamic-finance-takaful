# Demo Script: Takaful Claims Intelligence
## ~4-Minute Recorded Walkthrough
**Format**: Screen recording with voiceover
**Target**: Customer meeting / booth loop / social share
**Narrative**: "Snowflake transforms Takaful claims processing — AI parses 15,000 claim documents, ML scores fraud risk, anomaly detection catches patterns, and Cortex Complete generates investigation summaries for adjusters"
**Demo Mode**: Open app with `?demo=true` for presenter notes

---

## Two Personas

| Persona | Role | Tool | What they care about |
|---|---|---|---|
| **Dato' Hj. Ibrahim** | CEO Takaful Division | React App (SPCS) | Claims leakage, fraud losses, processing efficiency, participant satisfaction, combined ratio |
| **Zainab binti Yusof** | Claims Manager | Amazon QuickSight | Claim validation, fraud indicators, investigation queue, provider network integrity, document completeness |

---

## What's Built

| Layer | Component | Detail |
|---|---|---|
| **RAW** | 5 tables | CLAIMS (15000), POLICYHOLDERS (50000), INVESTIGATION_NOTES (3000), CLAIM_DOCUMENTS (8000), PROVIDER_NETWORK (500) |
| **CURATED** | 4 Dynamic Tables | CLAIMS_DASHBOARD, FRAUD_SCORING, PROVIDER_ANALYTICS, INVESTIGATION_QUEUE |
| **ML** | ML.CLASSIFICATION + ML.ANOMALY_DETECTION | Forecasting + anomaly detection |
| **AI** | AI_PARSE_DOCUMENT, AI_EXTRACT, AI_CLASSIFY | Classification + extraction |
| **Search** | Cortex Search | 3000 documents indexed |
| **Agent** | TAKAFUL_CLAIMS_AGENT | Semantic View + Search tools |


---

## The Story

Malaysia's Takaful industry manages RM 35 billion in contributions across 15 licensed operators. A leading family Takaful operator processes 15,000 claims per quarter, but manual review catches only 0.8% of fraudulent claims. When AI_PARSE_DOCUMENT digitizes every claim form and ML.CLASSIFICATION scores fraud risk, the detection rate jumps to 1.9% — catching an additional RM 12.4M in suspicious claims that would have been paid without investigation.

---

## Script

### [0:00–0:45] CLAIMS OVERVIEW

**Show**: Claims Overview tab

> "Fifteen thousand claims processed this quarter — RM 47 million currently under investigation."

**Action**: Point at 15,000 claims KPI

### [0:45–1:30] FRAUD DETECTION

**Show**: Fraud Detection tab

> "ML.CLASSIFICATION scores every claim — top 284 flagged for investigation."

**Action**: Show fraud score distribution chart

### [1:30–2:15] PATTERN ANALYTICS

**Show**: Pattern Analytics tab

> "ML.ANOMALY_DETECTION flags 4 providers with claims volume 3x above normal."

**Action**: Show provider anomaly heatmap

### [2:15–3:00] ASK AI

**Show**: Ask AI tab

> "Dato' Hj. Ibrahim asks: 'What is the total value of claims flagged as fraudulent this quarter?'"

**Action**: Type fraud value question

### [3:00–3:45] ARCHITECTURE & DATA

**Show**: Architecture & Data tab

> "Seven Snowflake capabilities, five AWS services in the dual-build."

**Action**: Walk through architecture diagram


---

## Key Demo Differentiators

1. **AI_PARSE_DOCUMENT on Takaful claim forms** — Only demo parsing Islamic insurance claim documents with Malaysian medical terminology
2. **ML.CLASSIFICATION for fraud scoring** — Scores fraud probability on Takaful claims using Shariah-specific claim structures
3. **ML.ANOMALY_DETECTION on provider patterns** — Detects syndicated fraud across provider networks in real time
4. **Investigation note search with Cortex Search** — 3,000 investigation notes searchable for precedent and pattern matching
5. **Cortex Complete for investigation summaries** — Generates human-readable investigation reports from parsed documents and ML scores
6. **Malaysian Takaful context** — RM 35B industry with authentic Malaysian panel hospital names and Takaful terminology


---

## Demo Prep Checklist

### Data Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_TAKAFUL_CLAIMS.RAW.CLAIMS` → 15000
- [ ] `SELECT COUNT(*) FROM ISLAMIC_TAKAFUL_CLAIMS.RAW.POLICYHOLDERS` → 50000
- [ ] `SELECT COUNT(*) FROM ISLAMIC_TAKAFUL_CLAIMS.RAW.CLAIM_DOCUMENTS` → 8000

### ML Model Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_TAKAFUL_CLAIMS.ML.FRAUD_SCORING_RESULTS WHERE FRAUD_PROBABILITY > 0.7` → >=284
- [ ] `SELECT COUNT(*) FROM ISLAMIC_TAKAFUL_CLAIMS.ML.CLAIMS_PATTERN_ANOMALY_RESULTS WHERE IS_ANOMALY = TRUE` → >=4

### AI/Agent Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_TAKAFUL_CLAIMS.AI.CLAIM_PARSE_RESULTS` → 8000

