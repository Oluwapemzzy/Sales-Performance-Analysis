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
- I proceeded to creating the pivot tables where I dragged "Product" to ROW and "TotalSales" to VALUES  under the pivot table filter and I got the total sales by Products

### Total Sales by Region
- I proceeded to creating the pivot tables where I dragged "REGION" to ROWS and "TotalSales" to VALUES  under the pivot table filter and I got the total sales by Region.

### Total Sales by Month
- I created a Row called "MonthName" on the SALESDATAtable using the forumlar,
  
```SQL
=TEXT(OrderDate, "mmmm")
```

- I proceeded to creating the pivot tables where I dragged "Months" to ROW and "TotalSales" to VALUES  under the pivot table filter and I got the total sales by Products

### Average Sales per Product
- I calculated the average sales by using the AVERAGEGIF function for each product.

### Total Revenue by Region
- Total revenuwe by region was calculated using the SUMIF function.


### Interesting Report
- I used Delimiter function to divide the OrderDate into its components: Day, Month and Year creating individual rows
- I used the pivottable to cheeck for the products that were ordered the most during festive season (December)


## MY SQL STEPS
