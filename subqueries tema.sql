               SELECT contactLastName,contactFirstName
               city,country 
                FROM customers  
                WHERE country IN
			    (SELECT country FROM customers 
                WHERE country= 'Australia');
                
                SELECT CONCAT(contactLastName, ' ',	contactFirstName) AS "Nume client",
	            city, country
	            FROM customers
	            WHERE salesRepEmployeeNumber IN
	            (SELECT employeeNumber
		        FROM employees
		        WHERE officeCode IN
			   (SELECT officeCode FROM offices
				WHERE country = 'Australia'));
			
            
		
		SELECT productCode, productName,city
        FROM products,customers
        WHERE city IN
               (SELECT city FROM customers
                WHERE city IN('Boston', 'Madrid', 'Los Angeles'));
                
        SELECT lastName, firstName,country
        FROM employees, offices
		WHERE country IN
              (SELECT country FROM offices
              WHERE country!= 'USA');    
	
		
        SELECT a.lastName,a.firstName,b.country
		FROM employees a 
        LEFT JOIN offices b ON a.officeCode=b.officeCode
        WHERE country !='USA';
        
         SELECT a.contactLastname, a.contactFirstname,a.city,b.country
		 FROM customers a, customers b
		 HAVING country IN('Australia');
				
		  SELECT DISTINCT a.productCode,a.productName,b.city
          FROM products a
          JOIN customers b 
          WHERE city IN('Boston', 'Madrid', 'Los Angeles');
          
				
		SELECT * FROM employees;
                   
	SELECT 
           a.productVendor,
           ROUND(SUM(b.priceEach*b.quantityOrdered),2 ) AS "Total_comenzi"
           FROM products a JOIN orderdetails b
           ON a.productCode=b.productCode
           GROUP BY a.productVendor
           ORDER BY ROUND(SUM(b.priceEach*b.quantityOrdered),2) DESC;
           
  
  
         
				
		
              
              
              
                
                