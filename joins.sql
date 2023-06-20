USE bestbuy;

/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT p.Name, c.Name FROM products AS p JOIN categories AS c ON p.CategoryID = c.CategoryID WHERE c.Name = 'Computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.Price, r.Rating FROM products AS p JOIN reviews AS r ON p.ProductID = r.ProductID WHERE r.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT CONCAT(e.FirstName,' ', e.LastName) AS name, SUM(s.Quantity) AS Quantity FROM employees AS e JOIN sales AS s ON e.EmployeeID = s.EmployeeID GROUP BY e.EmployeeID ORDER BY Quantity DESC LIMIT 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS department, c.Name AS category FROM departments AS d JOIN categories AS c ON d.DepartmentID = c.DepartmentID WHERE c.Name = 'Appliances' OR c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name AS product, SUM(s.Quantity) AS numberSold, SUM(s.PricePerUnit) AS totalPrice FROM products AS p JOIN sales AS s ON p.ProductID = s.ProductID WHERE p.Name LIKE '%Hotel%' GROUP BY product;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name AS productName, r.Reviewer AS reviewerName, r.Rating AS rating, r.Comment AS reviewComment FROM products AS p JOIN reviews AS r ON p.ProductID = r.ProductID WHERE p.Name LIKE '%Vi%' AND r.Rating = 1;