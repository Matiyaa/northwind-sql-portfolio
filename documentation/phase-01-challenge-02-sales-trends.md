# Challenge 2: Sales Performance Analysis

## Scenario
Your manager needs monthly sales trends and operational efficiency metrics for the quarterly board review. They want to understand revenue patterns, shipping costs, and identify peak/low performance periods.

## Business Questions Answered
- **Monthly Sales Trends**: What's our revenue and order volume by month?
- **Freight Cost Analysis**: How much are we spending on shipping relative to sales revenue?
- **Seasonal Performance**: Which months show our strongest/weakest performance?
- **Order Value Efficiency**: How has average order value changed over time?

## Key Findings
- **Revenue Growth**: Strong accelerating growth from $27K (Jul 96) to $123K (Apr 98) - 350%+ increase
- **Seasonal Patterns**: Q4 and Q1 consistently strongest performers (Nov-Apr peak season)
- **Order Volume**: Monthly orders ranged from 14 to 74, tracking with revenue growth
- **Average Order Value**: Maintained between $1,019-$1,856 showing healthy customer spend
- **Freight Efficiency**: Average freight per order stable at $50-$100 range
- **Growth Trajectory**: 2018 showed exponential acceleration suggesting strong market momentum

## Technical Skills Demonstrated
- **Advanced Date Functions**: `FORMAT()`, `YEAR()`, `MONTH()`, `DATENAME()` for temporal analysis
- **Complex Aggregation**: Multi-level grouping with calculated fields
- **Revenue Calculations**: Accurate line-item revenue with proper discount handling
- **Business Intelligence**: Currency formatting for executive presentations
- **Seasonal Analysis**: Monthly and quarterly comparative ranking
- **Dashboard Design**: Consolidated multi-metric reporting

## SQL Techniques Mastered
- `FORMAT(date, 'MM-yy')` for business-friendly date displays
- `SUM(UnitPrice * Quantity * (1 - Discount))` for accurate revenue calculation
- `COUNT(DISTINCT OrderID)` for proper order volume counting
- String concatenation with `CAST()` for quarter-year labels
- `INNER JOIN` between Orders and Order Details for revenue analysis
- `GROUP BY` with multiple date components for chronological ordering

## Business Impact
**Strategic Planning**: Monthly variance analysis enables better inventory and staffing planning for seasonal peaks

**Cost Management**: Freight cost tracking identifies shipping efficiency opportunities - stable per-order costs indicate good operational control

**Revenue Optimization**: Clear growth trajectory and seasonal patterns support sales forecasting and resource allocation

**Customer Intelligence**: AOV stability suggests consistent customer value proposition during growth phase

## Files
- **SQL**: `phase-01-foundations/02-sales-trends.sql`
- **Results**: `phase-01-foundations/results/02_*.csv`
- **Notion**: [Sales Performance Analysis](https://www.notion.so/matiya/Northwind-Traders-Sales-Performance-Analysis-2257cac77a69802489efd64ae6cd5ad7)