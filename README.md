# Repeater control and database level paging

ASP.NET Data Repeater control and database level paging

This article describes how to use asp.net data repeater control for paging with database level paging. This approach will give you significant performance for your page. 
Also, this article will highlight some of the common things which you can use to improve your repeater control performance.

##Files

1. **[GetAllCustomers stored proc](https://github.com/geeksarray/repeater-control-and-database-level-paging/blob/master/NorthwindApp/NorthwindApp/GetAllCustomerCount.sql)** to get page wise customers. 
2. **[GetAllCustomersCount stored proc](https://github.com/geeksarray/repeater-control-and-database-level-paging/blob/master/NorthwindApp/NorthwindApp/GetAllCustomerCount.sql)** get all customers count to decide number of pages required to be rendered for DataRepeater.
3. **[CustomerService.cs](https://github.com/geeksarray/repeater-control-and-database-level-paging/blob/master/NorthwindApp/NorthwindApp/CustomerService.cs)** - connecting to database and fetching only required customers depending on current page index and page size.

![ASP.NET Data Repeater control with custom paging](https://geekarray.com/images/blog/custompaging.png)

For more details visit - https://geeksarray.com/blog/repeater-control-and-database-level-paging
