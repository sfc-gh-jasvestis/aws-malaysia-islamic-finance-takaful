# Takaful Claims Intelligence

**Malaysia - Islamic Finance**
Use case: Takaful Claims Processing

> AI-powered claims processing for Malaysia's Takaful operators — AI_PARSE_DOCUMENT digitizes claim forms, ML.CLASSIFICATION scores fraud risk, and Cortex Complete generates investigation summaries.

## Why Snowflake

Snowflake transforms Takaful claims processing — AI parses 15,000 claim documents, ML scores fraud risk, anomaly detection catches patterns, and Cortex Complete generates investigation summaries for adjusters

- **AI_PARSE_DOCUMENT on Takaful claim forms** - Only demo parsing Islamic insurance claim documents with Malaysian medical terminology
- **ML.CLASSIFICATION for fraud scoring** - Scores fraud probability on Takaful claims using Shariah-specific claim structures
- **ML.ANOMALY_DETECTION on provider patterns** - Detects syndicated fraud across provider networks in real time
- **Investigation note search with Cortex Search** - 3,000 investigation notes searchable for precedent and pattern matching
- **Cortex Complete for investigation summaries** - Generates human-readable investigation reports from parsed documents and ML scores
- **Malaysian Takaful context** - RM 35B industry with authentic Malaysian panel hospital names and Takaful terminology

## What is deployed

| | |
|---|---|
| Database | `MY_ISLAMIC_FINANCE_TAKAFUL` |
| Service | `MY_ISLAMIC_FINANCE_TAKAFUL_APP` |
| Compute pool | `SEA_DEMOS_MALAYSIA_POOL` |
| Dimension table | `RAW.PROVIDER_NETWORK` (20 rows) |
| Fact table | `RAW.POLICYHOLDERS` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | MYR (RM) |

Regions in play: Selangor, Johor, Penang, Sabah, Sarawak
Segments: Motor Claim, Medical Claim, Family Takaful, Property Claim

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh MY_ISLAMIC_FINANCE_TAKAFUL
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| Gross Contributions | `RM 12.4B` | total across Provider Network |
| Claims Ratio | `58%` | average per event |
| Surplus Distributed | `RM 2.4B` | total across Provider Network |
| Policies Active | `8.4M` | total across Provider Network |
| Solvency Ratio | `247%` | average per event |
| Reserve Adequacy | `118%` | average per event |
| Persistency | `87%` | average per event |


## Demo flow

1. Claims Overview
2. Fraud Detection
3. Pattern Analytics
4. Ask AI
5. Architecture & Data

## Talking points

- **15,000 claims** - processed this quarter across family and general Takaful
- **284 fraudulent (1.9%)** - claims flagged by ML.CLASSIFICATION
- **RM 47M** - total claims value under investigation
- **72 hours** - average claim processing time (down from 14 days)
- **4 providers** - flagged anomalous by ML.ANOMALY_DETECTION

## Business impact

- Malaysia's Takaful industry collected RM 35.2B in contributions in 2023, growing 8.4% YoY (Bank Negara Malaysia)
- Insurance fraud costs the industry 5-10% of total claims — AI detection reduces losses by 40-60% (Coalition Against Insurance Fraud)
- AI-powered claims processing reduces average handling time by 50-70% (McKinsey Insurance)
- Malaysia targets 75% Takaful penetration rate under IFSA 2013 — efficient processing is critical (MIFC)

---
Generated from `generator/demo_specs/aws-malaysia-islamic-finance-takaful.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-malaysia-islamic-finance-takaful` instead.
