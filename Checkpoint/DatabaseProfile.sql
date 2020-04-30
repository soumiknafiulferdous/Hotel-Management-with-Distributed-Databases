SET SERVEROUTPUT ON;

DECLARE
	card NUMBER(10);
	type namesarray IS VARRAY(10) OF VARCHAR2(50);
	colName namesarray;
	total integer;
	colSize integer;
	disVal integer;
	totalSize integer := 0;

BEGIN

	SELECT count(*) into card FROM customer1;
	
	dbms_output.put_line('---------------------------');
	DBMS_OUTPUT.PUT_LINE('Cardinality of customer1 : ' || card);
	dbms_output.put_line('----------------------------------');
	
	colName := namesarray('c_id','name','mobile','email','date_of_birth','nationality','city');
	total := colName.count;
	dbms_output.put_line('---DISTINCT NO OF ROWS IN EVERY ATTRIBUTE---');

	
	
	  SELECT count(DISTINCT (c_id)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(1)|| ']' || ' = ' || disVal); 
	   SELECT count(DISTINCT (name)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(2)|| ']' || ' = ' || disVal); 
	  
	  SELECT count(DISTINCT (mobile)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(3)|| ']' || ' = ' || disVal); 
	  
	  	  SELECT count(DISTINCT (email)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(4)|| ']' || ' = ' || disVal); 
	  
	  	  SELECT count(DISTINCT (date_of_birth)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(5)|| ']' || ' = ' || disVal); 
	  
	  	    SELECT count(DISTINCT (nationality)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(6)|| ']' || ' = ' || disVal); 
	  
	   SELECT count(DISTINCT (city)) into disVal FROM customer1;
      dbms_output.put_line('Column[' || colName(7)|| ']' || ' = ' || disVal); 
	  
	
	dbms_output.put_line('----------------------');
	dbms_output.put_line('---MAX SIZE OF ROW FOR EVERY ATTRIBUTE---');
	
	
	   SELECT max(length (c_id)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(1)|| ']' || ' = ' || colSize); 
	   totalSize := totalSize + colSize;
	   SELECT max(length(name)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(2)|| ']' || ' = ' || colSize); 
	   totalSize := totalSize + colSize;
	  
	   SELECT max(length (mobile)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(3)|| ']' || ' = ' || colSize); 
	   totalSize := totalSize + colSize;
	  
	   SELECT max(length(email)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(4)|| ']' || ' = ' || colSize); 
	   totalSize := totalSize + colSize;
	  
	    SELECT max(length (date_of_birth)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(5)|| ']' || ' = ' || colSize); 
	   
	  totalSize := totalSize + colSize; 
	  
	   SELECT max(length (nationality)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(6)|| ']' || ' = ' || colSize); 
	   
	  totalSize := totalSize + colSize; 
	   SELECT max(length (city)) into colSize FROM customer1;
      dbms_output.put_line('Column[' || colName(7)|| ']' || ' = ' || colSize); 
	   
	  totalSize := totalSize + colSize; 
    
 
	dbms_output.put_line('----------------------------------------------'); 
	dbms_output.put_line('SUM OF SIZE OF ALL ATTRIBUTES : ' || totalSize); 
	dbms_output.put_line('----------------------------------------------');
 
END;
/

