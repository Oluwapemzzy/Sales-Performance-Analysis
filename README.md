# Sales-Performance-Analysis
Sales Performance Analysis for a Retail Store Incubator Hub Project

## MICROSOFT EXCEL STEPS
- I cleaned my dataset by selecting the dataset using ctrl+shift+end to select my dataset, then I clicked DATA on the toolbar then clicked on remove duplicates. This helped me removed any duplicate rows.
- I eliminated all blank spaces by selecting the dataset then click on DATA in the tool bar then I selected "Find and select", look for "special", clicked on "blanks", then the blank spaces was selected and then i deleted.
- My dataset was clean and ready and read to use
- I proceeded to do the project task where I was to summarise the total sales by products, region and month.

### Total Sales by Products
- I created a row called "Total Sales" on the SALESDATAtable using the forumlar,

 ```
TOTAL SALES = (Quantity * UnitPrice.)
```
- I proceeded to creating the pivot tables where I dragged "Product" to ROW and "TotalSales" to VALUES  under the pivot table filter and I got the total sales by Products.

  ![Total Sales by Product](https://github.com/user-attachments/assets/98b85fb0-7b2e-43ce-8a1e-d517e536d6f0)


### Total Sales by Region
- I proceeded to creating the pivot tables where I dragged "REGION" to ROWS and "TotalSales" to VALUES  under the pivot table filter and I got the total sales by Region.

![Total Sales By Region](https://github.com/user-attachments/assets/6e66e1e2-df97-4cf2-948f-3320978a343f)


### Total Sales by Month
- I created a Row called "MonthName" on the SALESDATAtable using the forumlar,
  
```
=TEXT(OrderDate, "mmmm")
```
![Month Demiliter](https://github.com/user-attachments/assets/d753c1ba-09f8-4f13-8b86-1d4f8edb2a76)

- I proceeded to creating the pivot tables where I dragged "Months" to ROW and "TotalSales" to VALUES  under the pivot table filter and I got the total sales by Products

![Total Sales by Month](https://github.com/user-attachments/assets/a6f148f3-1a29-448d-8663-f3bf5570a214)

### Average Sales per Product
- I calculated the average sales by using the AVERAGEGIF function for each product.
  

  ![Average Sales Per Product](https://github.com/user-attachments/assets/3a2cb4cc-e128-4b2b-a4df-20f24830c128)


### Total Revenue by Region

- Total revenue by region was calculated using the SUMIF function.

  ![Total Revenue by Region](https://github.com/user-attachments/assets/d491442f-6ae8-4f12-9b98-1e963a4f527c)

### Interesting Report
- I used Delimiter function to divide the OrderDate into its components: Day, Month and Year creating individual rows
- I used the pivottable to cheeck for the products that were ordered the most during festive season (December).

![Filter](https://github.com/user-attachments/assets/982993e8-f829-40fb-9880-a4c63f5b5afe)


## MY SQL STEPS
I used Microsoft Sql Server Management Studio to write and validate my queries. The followig were solved using SQL

1. Retrieve the total sales for each product category.
   
![Sales Retrieval](https://github.com/user-attachments/assets/73e80024-9fac-479a-b310-54942d14b995)

2. Find the number of sales transactions in each region.

 ![No of Sales Transaction](https://github.com/user-attachments/assets/ccf79805-2ced-4ea0-932b-cd6777c83737)

3. Find the highest-selling product by total sales value.

![Highest Selling Product by Total Sales](https://github.com/user-attachments/assets/08050188-49c8-4964-ba20-a59705a28299)

4. Calculate total revenue per product.

![Total Revenue by Product](https://github.com/user-attachments/assets/bf4bba5b-5fd1-43bb-9894-02acbcbf39e5)

5. Calculate monthly sales totals for the current year.

![Monthly Sles for the Cureent Year](https://github.com/user-attachments/assets/6690ce94-7960-4ffa-b36c-985a851884b5)

7. Find the top 5 customers by total purchase amount.

![Top 5](https://github.com/user-attachments/assets/d6d584ba-0d37-4d7c-b7a8-ffed79d898b5)

8. Calculate the percentage of total sales contributed by each region.

![Percentage Total](https://github.com/user-attachments/assets/4d01c0eb-bc65-4cbf-b02a-4628418afa33)


## POWER BI

I used Microsoft Power BI to visualise my Excel and SQL result by creating a dashboard which includes sales overview, top-performing products, and regional breakdowns.

1. Top-Performing Products - I used a bar chart to visualise the top-performing products with Sum of Sales on my Y-axis and Procuct table on my X-axis.
2. Regional Breakdowns
