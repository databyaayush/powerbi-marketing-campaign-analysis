-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue FROM campaign_data;

-- Total Spend
SELECT SUM(Spend) AS Total_Spend FROM campaign_data;

-- ROI Calculation
SELECT Campaign_Name,
       (SUM(Revenue) - SUM(Spend)) / SUM(Spend) AS ROI
FROM campaign_data
GROUP BY Campaign_Name;

-- Region Performance
SELECT Region,
       SUM(Revenue) AS Revenue,
       SUM(Spend) AS Spend
FROM campaign_data
GROUP BY Region;

-- Top Campaigns by ROI
SELECT Campaign_Name,
       (SUM(Revenue) - SUM(Spend)) / SUM(Spend) AS ROI
FROM campaign_data
GROUP BY Campaign_Name
ORDER BY ROI DESC;