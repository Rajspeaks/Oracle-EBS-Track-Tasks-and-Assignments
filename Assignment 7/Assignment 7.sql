-- Items 
SELECT segment1,primary_uom_code
FROM MTL_SYSTEM_ITEMS_B
where segment1='XXCTS_RAJDEEP_ALMOND';

SELECT *
FROM MTL_SYSTEM_ITEMS_B
where segment1='XXCTS_RAJDEEP_ALMOND';


SELECT *
from mtl_units_of_measure_tl;

SELECT *
from MTL_ITEM_STATUS_TL;

SELECT *
from MTL_ITEM_LOCATIONS;

SELECT *
from MTL_PARAMETERS;

SELECT SEGMENT1,PRIMARY_UOM_CODE,UNIT_OF_MEASURE
FROM MTL_SYSTEM_ITEMS_B  MSIB , MTL_UNITS_OF_MEASURE_TL MUOMT
WHERE MSIB.PRIMARY_UNIT_OF_MEASURE =  MUOMT.UNIT_OF_MEASURE
and  segment1='XXCTS_RAJDEEP_ALMOND'
AND LANGUAGE ='US';

-------------------------------------------------------------------------------
SELECT * FROM PER_ALL_PEOPLE_F WHERE LAST_NAME = 'Stockman';

SELECT * FROM PER_ALL_PEOPLE_F WHERE FULL_NAME = 'Stockman, Mr. Pat';

SELECT FULL_NAME, ATTRIBUTE_CATEGORY, EMPLOYEE_NUMBER,VENDOR_ID 
FROM PER_ALL_PEOPLE_F WHERE FULL_NAME = 'Stockman, Mr. Pat';

SELECT * FROM PO_VENDORS WHERE VENDOR_NAME = 'Stockman, Mr. Pat'; 

------------------------------------------------------------------------------------
--REQUISITION_HEADER_ID: 667981
-- REQUISITION LINE ID: 718428
-- SEGMENT1: 200684

DESC PO_REQUISITION_HEADERS_ALL;
DESC PO_REQUISITION_LINES_ALL;


SELECT * FROM PO_REQUISITION_HEADERS_ALL;
SELECT * FROM PO_REQUISITION_LINES_ALL;
SELECT * FROM PO_REQ_DISTRIBUTIONS_ALL;


SELECT * FROM PO_REQUISITION_HEADERS_ALL WHERE SEGMENT1='200684';
SELECT * FROM PO_REQUISITION_LINES_ALL WHERE REQUISITION_HEADER_ID='667981';
SELECT * FROM PO_REQ_DISTRIBUTIONS_ALL WHERE REQUISITION_LINE_ID='718428';
-- due to no set up the last query will show blank output. 

SELECT CURRENCY_CODE FROM PO_REQUISITION_LINES_ALL WHERE REQUISITION_HEADER_ID='667981';

SELECT SUGGESTED_VENDOR_NAME, SEGMENT1 FROM PO_REQUISITION_HEADERS_ALL PRHA, PO_REQUISITION_LINES_ALL PRLA
WHERE PRHA.REQUISITION_HEADER_ID = PRLA.REQUISITION_HEADER_ID
AND PRHA.SEGMENT1 = '200684';

SELECT TYPE_LOOKUP_CODE FROM PO_REQUISITION_HEADERS_ALL 
WHERE SEGMENT1 = '200684'; 

SELECT SEGMENT1, UNIT_PRICE*QUANTITY AS TOTAL_AMOUNT 
FROM PO_REQUISITION_HEADERS_ALL PRHA, PO_REQUISITION_LINES_ALL PRLA
WHERE PRHA.REQUISITION_HEADER_ID = PRLA.REQUISITION_HEADER_ID
AND PRHA.SEGMENT1 = '200684';

SELECT PRHA.SEGMENT1, PRLA.CREATION_DATE, PRLA.QUANTITY, PRLA.UNIT_PRICE, PRLA.QUANTITY*PRLA.UNIT_PRICE AS TOTAL_AMOUNT, PRLA.CURRENCY_CODE 
FROM PO_REQUISITION_HEADERS_ALL PRHA, PO_REQUISITION_LINES_ALL PRLA
WHERE PRHA.REQUISITION_HEADER_ID = PRLA.REQUISITION_HEADER_ID
AND PRHA.SEGMENT1 = '200684';

SELECT *
FROM PO_REQUISITION_HEADERS_ALL PRHA, PO_REQUISITION_LINES_ALL PRLA
WHERE PRLA.REQUISITION_HEADER_ID=PRHA.REQUISITION_HEADER_ID
AND SEGMENT1='200684';
--PO_REQUISITION_HEADERS_ALL
--PO_REQUISITION_LINES_ALL
--PO_REQ_DISTRIBUTIONS_ALL

SELECT *
FROM PO_REQUISITION_HEADERS_ALL PRHA, PO_REQUISITION_LINES_ALL PRLA--, PO_REQ_DISTRIBUTIONS_ALL PRDA
WHERE PRLA.REQUISITION_HEADER_ID=PRHA.REQUISITION_HEADER_ID
--AND PRDA.REQUISITION_LINE_ID= PRLA.REQUISITION_LINE_ID
AND SEGMENT1='200684';

SELECT *
FROM PO_REQUISITION_HEADERS_ALL PRHA, PO_REQUISITION_LINES_ALL PRLA, PO_REQ_DISTRIBUTIONS_ALL PRDA
WHERE PRLA.REQUISITION_HEADER_ID=PRHA.REQUISITION_HEADER_ID
AND PRDA.REQUISITION_LINE_ID= PRLA.REQUISITION_LINE_ID
AND SEGMENT1='200684';


