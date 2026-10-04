# Restaurant-Performance-Diagnostics-Analysis
End to End Project(Python+ SQL+ Power BI)

## The Problem Statement (The "Story"):
Business was running smoothly until Month 8, where a sudden 70% revenue drop was observed. Stakeholders were concerned about a market crash or operational failure.
​## The Solution (Your Value)
​"I performed a Root Cause Analysis (RCA) and discovered that the issue wasn't the business, but Data Integrity. From Month 8 onwards, the source data only captured 8 days of transactions instead of 30. I built a diagnostic dashboard to visualize this gap and provided actionable insights on high-performing locations like Yelahanka and hero products like the Triple Chicken Feast."

## Technical Stack Used (Skills):
​SQL/Python: For data cleaning ,transformation ,Visulization And SQL for Deep Dive Analysis.
<img width="813" height="775" alt="Screenshot 2026-04-29 154531" src="https://github.com/user-attachments/assets/192829af-219e-4e7d-af6c-dca166cfef74" />

​###  Power BI: For Executive & Diagnostic Dashboards.
​###  Advanced DAX: To calculate KPIs like Average Order Value (AOV) and Rating Counts.
​### Storytelling: To bridge the gap between complex data and business decisions.

## Key Features of the Dashboard
​Executive Overview: High-level KPIs (Revenue, Orders, Ratings).
​Diagnostic Insights: Identification of missing data days (The "Why" behind the drop).
​Location Analysis: Top-rated spots and geographic performance.
​Product Deep Dive: Revenue contribution of premium vs. mass-market dishes.
Dashboard Link :https://drive.google.com/file/d/16ZB0FZpOpGkyKCQaVP0BA7rJHMj5xxhR/view?usp=sharing
Dashboard Pics
<img width="1281" height="722" alt="Screenshot 2026-04-29 154505" src="https://github.com/user-attachments/assets/9d5ad1c6-0e9b-4c21-8a0d-2f2e78b27b5b" />
<img width="1299" height="734" alt="Screenshot 2026-04-29 154519" src="https://github.com/user-attachments/assets/ac25e6f4-0a15-4f02-979b-1d561ac7e2a3" />




## Key Insights

The overall business performance was robust between Month 1 and Month 8. Month 6 saw a peak revenue of approximately 6M. Our KPIs show Total Orders at
197K and a healthy Average Order Value of $268.51. In terms of restaurant performance, KFC was a dominant leader, contributing over 31% to the total revenue.

​However, at Month 8, we observe an alarming, vertical revenue drop from 5.8M to 1.7M, decreasing further in the following months. A shallow analysis might
conclude a market crash, but we dug deeper.

On the second page of our diagnostics, we broke down the 'Revenue by Month Days'. We made a startling discovery: From Month 8 to Month 12, the source data only
includes 8 days of transactions, whereas previous months had up to 30 days. This means 73% of the transaction days are missing. The business did not fail; the data collection failed.

Despite the data issue, we can still gather valuable insights from the remaining data. The location 'Yelahanka' is a favourite, securing 12.94% of the high ratings. 
In our product analysis, 'Triple Chicken Feast' is our premium hero product, generating 96K in revenue and outperforming 'Paneer Butter Masala'. Our high-margin opportunities are clear.

### Actionable Recommendations:
​Immediate Action: Fix the data ingestion pipeline between source systems and the data warehouse for Month 8-12.
​Product Focus: Lean into our 'Triple Chicken Feast' marketing in 'Yelahanka' to capitalize on high rating trends.
​Data Governance: Implement data completeness checks in our ETL process to ensure we have a full month of data before performing strategic analysis.​
