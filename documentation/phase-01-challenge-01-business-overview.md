# Challenge 1: Business Intelligence Briefing

## Scenario
You've just joined Northwind Traders as a data analyst. Your manager wants a comprehensive business overview to understand the company's scale and data landscape.

## Business Questions Answered
- **Data Inventory**: What tables do we have and what's their basic structure?
- **Business Scale**: How many customers, products, orders, and employees are we tracking?
- **Geographic Reach**: Which countries/regions do we operate in?
- **Temporal Coverage**: What date range does our data span?
- **Data Quality Snapshot**: Any obvious gaps or issues to flag?

## Key Findings
- **Business Scale**: 91 customers, 77 products, 830 orders, 9 employees, 29 suppliers
- **Geographic Reach**: Operations span 21 customer countries with USA, France, and Germany leading
- **Temporal Coverage**: July 1996 - May 1998 (nearly 2 years of operational data)
- **Data Quality**: All referential integrity checks passed - clean dataset for analysis

## Technical Skills Demonstrated
- **Database Discovery**: Information schema queries for systematic table inventory
- **Business Metrics**: Subquery patterns for efficient multi-table aggregation
- **Geographic Analysis**: UNION operations for combining customer and supplier data
- **Data Quality Framework**: Conditional logic with CASE WHEN for validation
- **Referential Integrity**: EXISTS conditions for cross-table relationship validation

## SQL Techniques Mastered
- `INFORMATION_SCHEMA` queries for metadata analysis
- Subqueries in SELECT clauses for consolidated reporting
- `UNION ALL` for combining related datasets
- `CASE WHEN` with `EXISTS` for conditional validation
- Multi-table referential integrity checks

## Business Impact
Established comprehensive data foundation enabling:
- Strategic planning with 21-country international scope
- Historical trend analysis across 2-year period
- Confident analysis knowing data quality is robust
- Operational insights across full business entity spectrum

## Files
- **SQL**: `phase-01-foundations/01-business-overview.sql`
- **Results**: `phase-01-foundations/results/01_*.csv`
- **Notion**: [Business Intelligence Overview](https://www.notion.so/matiya/Northwind-Traders-Business-Intelligence-Overview-21a7cac77a698020bc2dd016a4c18433)