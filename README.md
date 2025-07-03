# Northwind SQL Portfolio - Advanced Analytics Journey

A comprehensive SQL learning project demonstrating progression from foundational techniques to advanced business analytics using the classic Northwind Traders dataset.

## Project Overview

**Goal**: Build demonstrable "advanced SQL" skills for mid-level analytics roles through progressive challenge-based learning, moving from basic queries to sophisticated business intelligence analysis.

**Approach**: Solve realistic business problems using Microsoft SQL Server (T-SQL), with each challenge building complexity while maintaining practical business relevance.

**Portfolio Strategy**: Dual showcase combining technical proficiency (GitHub) with business insights (Notion).

## Learning Structure

### Phase 1: Foundation Reinforcement ✅
**Focus**: Core syntax mastery, essential functions, basic aggregation
- Database discovery and business intelligence fundamentals
- Revenue calculations with discount handling
- Monthly trend analysis and seasonal patterns
- Data quality validation frameworks

### Phase 2: Intermediate Joins & Subqueries
**Focus**: Multi-table relationships and nested logic
- All JOIN types with proper aliasing
- Self-joins for hierarchical data
- Subquery techniques: scalar, correlated, EXISTS vs IN
- Understanding NULL handling in comparisons

### Phase 3: Advanced Aggregation & CTEs
**Focus**: Complex grouping and query organization
- Common Table Expressions for readability and recursion
- Advanced grouping: ROLLUP, CUBE, GROUPING SETS
- Conditional aggregation patterns
- Performance considerations vs derived tables

### Phase 4: Window Functions & Analytics
**Focus**: Advanced analytical capabilities
- Ranking functions: ROW_NUMBER, RANK, DENSE_RANK, NTILE
- Offset functions: LAG, LEAD for period comparisons
- Aggregate window functions with proper framing
- Running totals and moving averages

### Phase 5: Performance & Optimization
**Focus**: Efficiency and production readiness
- Reading and interpreting execution plans
- Index awareness and SARGABLE predicates
- Query optimization techniques
- When to break complex queries into temp tables

### Phase 6: Advanced Problem Solving
**Focus**: Real-world business scenarios
- Cohort analysis and customer segmentation
- Time-series analysis patterns
- Data quality and profiling techniques
- Gap and island problems

## Technical Setup

**Database**: Microsoft SQL Server Express 2022
**IDE**: PyCharm with database integration
**Dataset**: Northwind sample database (realistic business scenario)
**Language**: T-SQL (Microsoft SQL Server dialect)

## Repository Structure
📁 northwind-sql-portfolio/
├── 📁 phase-01-foundations/
│   ├── 01-business-overview.sql
│   ├── 02-sales-trends.sql
│   └── 📁 results/ (exported query outputs)
├── 📁 documentation/ (detailed challenge documentation)
├── 📁 database-setup/
│   └── instnwnd.sql
├── README.md
└── pyproject.toml

## Portfolio Showcase

**Technical Implementation**: All SQL code with clear business context and professional commenting
**Business Analysis**: Detailed insights and findings documented in Notion with visual results
**Progressive Complexity**: Each challenge builds upon previous skills while introducing new concepts

## Getting Started

1. Clone the repository
2. Review the database setup in `database-setup/`
3. Follow the progressive challenges in each phase folder
4. Check business insights in the linked Notion pages
5. Review detailed challenge documentation in `/documentation/`