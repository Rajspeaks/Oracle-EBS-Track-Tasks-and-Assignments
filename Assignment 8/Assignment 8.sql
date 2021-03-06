---------------------QUERY FOR RFQ-------------------------
SELECT * 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='300063'
AND TYPE_LOOKUP_CODE='RFQ';


--------------Question 7-------------------

SELECT PV.VENDOR_NAME 
FROM PO_VENDORS PV,PO_HEADERS_ALL PHA 
WHERE PHA.VENDOR_ID=PV.VENDOR_ID 
AND PHA.SEGMENT1='300063' 
AND PHA.TYPE_LOOKUP_CODE='RFQ';


-----Question 8------------------
SELECT QUOTE_TYPE_LOOKUP_CODE 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='300063'
AND TYPE_LOOKUP_CODE='RFQ';

---------Question 10-------------
SELECT PLA.UNIT_PRICE TOTAL_PRICE
FROM PO_HEADERS_ALL PHA,PO_LINES_ALL PLA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PHA.SEGMENT1='300063'
AND PHA.TYPE_LOOKUP_CODE='RFQ';

------------Question 10---------------


--PO_HEADER_ID: 443251
--SEGMENT1: 30063
--PO_LINE_ID: 516605
-- LINE_LOCATION_ID: 826492
-- ORG ID: 204 --> VISION OPERATIONS

SELECT * 
FROM PO_HEADERS_ALL; 

SELECT * FROM PO_LINES_ALL ;

SELECT * FROM PO_LINE_LOCATIONS_ALL;

----Question 9----------------------
SELECT PLA.ITEM_ID, MSIB.SEGMENT1 NAME, PLA.ITEM_DESCRIPTION, PLA.UNIT_MEAS_LOOKUP_CODE 
FROM PO_LINES_ALL PLA, PO_LINE_LOCATIONS_ALL PLLA, MTL_SYSTEM_ITEMS_B MSIB, PO_HEADERS_ALL PHA
WHERE PLA.PO_HEADER_ID = PLLA.PO_HEADER_ID
AND PLA.ITEM_ID = MSIB.INVENTORY_ITEM_ID
AND PLA.PO_HEADER_ID = PHA.PO_HEADER_ID
AND PLA.PO_HEADER_ID = '443251'
AND PHA.TYPE_LOOKUP_CODE = 'RFQ';


SELECT * FROM PO_LINES_ALL 
WHERE PO_HEADER_ID='443251';

SELECT * FROM PO_DISTRIBUTIONS_ALL 
WHERE PO_LINE_ID='516605';

SELECT * FROM PO_LINE_LOCATIONS_ALL 
WHERE PO_LINE_ID='516605';

SELECT * FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA 
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID 
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID 
AND SEGMENT1='300063' 
AND TYPE_LOOKUP_CODE='RFQ';

SELECT * FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA,PO_DISTRIBUTIONS_ALL PDA 
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID 
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID 
AND PDA.PO_LINE_ID=PLA.PO_LINE_ID 
AND SEGMENT1='300063' 
AND TYPE_LOOKUP_CODE='RFQ';

------------------QUERY FOR QUOTATION----------------------------------------
SELECT * FROM PO_LINE_LOCATIONS_ALL;

SELECT * 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='500070'
AND TYPE_LOOKUP_CODE='QUOTATION';

SELECT PV.VENDOR_NAME FROM PO_VENDORS PV, PO_HEADERS_ALL PHA
WHERE PV.VENDOR_ID = PHA.VENDOR_ID
AND PHA.SEGMENT1='500070';

SELECT QUOTE_TYPE_LOOKUP_CODE 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='500070'
AND TYPE_LOOKUP_CODE='QUOTATION';

SELECT QUOTE_TYPE_LOOKUP_CODE 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='500070'
AND TYPE_LOOKUP_CODE = 'QUOTATION';

--QUOTATION SEGMENT NUMBER: 500070
--PO_HEADER_ID: 443262
--PO_LINE_ID: 516616
--LINE_LOCATION_ID: 826510
--ITEM_ID: 315243
 
 --------------------Question 11-------------------------
SELECT PV.VENDOR_NAME 
FROM PO_VENDORS PV, PO_HEADERS_ALL PHA
WHERE PV.VENDOR_ID = PHA.VENDOR_ID
AND PHA.SEGMENT1='500070'
AND PHA.TYPE_LOOKUP_CODE='QUOTATION';


--------------------Question 12-----------------------
SELECT PLA.ITEM_ID, MSIB.SEGMENT1 AS NAME, PLA.ITEM_DESCRIPTION, PLA.UNIT_PRICE, PLA.UNIT_MEAS_LOOKUP_CODE
FROM PO_LINES_ALL PLA, PO_HEADERS_ALL PHA, MTL_SYSTEM_ITEMS_B MSIB
WHERE PLA.PO_HEADER_ID = PHA.PO_HEADER_ID
AND PLA.ITEM_ID = MSIB.INVENTORY_ITEM_ID
AND PHA.SEGMENT1 = '500070'
AND PHA.TYPE_LOOKUP_CODE = 'QUOTATION';



-----------------Question 14-------------------------
SELECT * FROM HR_LOCATIONS_ALL
WHERE LOCATION_ID='204';

SELECT PHA.SHIP_TO_LOCATION_ID, HLA.LOCATION_CODE AS SHIPPING_LOCATION_NAME, 
PHA.BILL_TO_LOCATION_ID, HLA.LOCATION_CODE AS BILLING_LOCATIONA_NAME
FROM HR_LOCATIONS_ALL HLA,PO_HEADERS_ALL PHA
WHERE PHA.SHIP_TO_LOCATION_ID = HLA.LOCATION_ID
AND PHA.BILL_TO_LOCATION_ID = HLA.LOCATION_ID
AND PHA.SEGMENT1 = '500070'
AND PHA.TYPE_LOOKUP_CODE = 'QUOTATION';



--SHIP_TO_LOCATION_ID:  204
--BILL_TO_LOCATION_ID: 204

SELECT * 
FROM PO_LINES_ALL;

SELECT * 
FROM PO_LINES_ALL
WHERE PO_HEADER_ID='443262';
 

SELECT * 
FROM PO_DISTRIBUTIONS_ALL
WHERE PO_LINE_ID='516616';

SELECT * 
FROM PO_LINE_LOCATIONS_ALL
WHERE PO_LINE_ID='516616';


SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='500070'
AND TYPE_LOOKUP_CODE='QUOTATION';

 

SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA,PO_DISTRIBUTIONS_ALL PDA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND PDA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='500070'
AND TYPE_LOOKUP_CODE='QUOTATION';

 

-----------------------QUERY FOR BLANKET PURCHASE ORDER-------------------------
SELECT * 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='400741'
AND TYPE_LOOKUP_CODE='BLANKET';

--BLANKET SEGMENT1 NUMBER: 400741
--PO_HEADER_ID: 443268
--PO_LINE_ID: 516622
--LINE_LOCATION_ID: 826517


 
SELECT * 
FROM PO_LINES_ALL
WHERE PO_HEADER_ID='443268';


SELECT * 
FROM PO_DISTRIBUTIONS_ALL
WHERE PO_LINE_ID='516622';

 
SELECT * 
FROM PO_LINE_LOCATIONS_ALL
WHERE PO_LINE_ID='516622';

 

SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='400741'
AND TYPE_LOOKUP_CODE='BLANKET';

 

SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA,PO_DISTRIBUTIONS_ALL PDA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND PDA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='400739'
AND TYPE_LOOKUP_CODE='BLANKET';

 


-----------------QUERY FOR STANDARD PURCHASE ORDER------------------------------
SELECT * 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='400743'
AND TYPE_LOOKUP_CODE='STANDARD';

--PURCHASE ORDER SEGMENT1: 400743
--PO_HEADER_ID: 443272
--PO_LINE_ID: 516625
--LINE_LOCATION_ID: 826520

---------------------Question 16-------------------
SELECT PLA.ITEM_ID, MSIB.SEGMENT1 AS NAME, PLA.ITEM_DESCRIPTION,PLA.UNIT_MEAS_LOOKUP_CODE
FROM PO_LINES_ALL PLA, PO_HEADERS_ALL PHA,MTL_SYSTEM_ITEMS_B MSIB
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLA.ITEM_ID=MSIB.INVENTORY_ITEM_ID
AND PHA.SEGMENT1='400743'
AND PHA.TYPE_LOOKUP_CODE='STANDARD';

-----------------------------------Question 18--------------------------
SELECT PHA.SHIP_TO_LOCATION_ID, HLA.LOCATION_CODE AS SHIPPING_LOCATION_NAME, 
PHA.BILL_TO_LOCATION_ID, HLA.LOCATION_CODE AS BILLING_LOCATIONA_NAME
FROM HR_LOCATIONS_ALL HLA, PO_HEADERS_ALL PHA
WHERE PHA.SHIP_TO_LOCATION_ID = HLA.LOCATION_ID
AND PHA.BILL_TO_LOCATION_ID = HLA.LOCATION_ID
AND PHA.SEGMENT1 = '400743'
AND PHA.TYPE_LOOKUP_CODE = 'STANDARD';

--------------------Question 20--------------------------------------
SELECT UNIT_MEAS_LOOKUP_CODE
FROM PO_LINES_ALL PLA, PO_HEADERS_ALL PHA
WHERE PLA.PO_HEADER_ID = PHA.PO_HEADER_ID
AND PHA.SEGMENT1 = '400743'
AND PHA.TYPE_LOOKUP_CODE='STANDARD';

--------------------------------Question 19-------------------------
SELECT PHA.STATUS_LOOKUP_CODE  
FROM PO_LINES_ALL PLA,PO_HEADERS_ALL PHA  
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID  
AND PHA.SEGMENT1='400743'  
AND PHA.TYPE_LOOKUP_CODE='STANDARD'; 

SELECT * FROM PO_LINES_ALL;

SELECT TYPE_LOOKUP_CODE 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='400743';

SELECT PHA.VENDOR_ID, PV.VENDOR_NAME FROM PO_HEADERS_ALL PHA, PO_VENDORS PV 
WHERE PHA.VENDOR_ID = PV.VENDOR_ID
AND PHA.SEGMENT1='400743';
 

SELECT * 
FROM PO_LINES_ALL
WHERE PO_HEADER_ID='443272';

 

SELECT * 
FROM PO_DISTRIBUTIONS_ALL
WHERE PO_LINE_ID='516625';

 

SELECT * 
FROM PO_LINE_LOCATIONS_ALL
WHERE PO_LINE_ID='516625';

 

SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='400743'
AND TYPE_LOOKUP_CODE='STANDARD';

 

SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA,PO_DISTRIBUTIONS_ALL PDA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND PDA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='400743'
AND TYPE_LOOKUP_CODE='STANDARD';


------------- QUERY FOR INVOICE--------------------
SELECT * FROM AP_INVOICES_ALL WHERE INVOICE_NUM='1007';

--INVOICE_NUM: 1007
--INVOICE_ID: 683282

SELECT * FROM AP_INVOICES_ALL AIA, AP_INVOICE_DISTRIBUTIONS_ALL AIDA 
WHERE AIDA.INVOICE_ID=AIA.INVOICE_ID AND INVOICE_NUM='1007';

--------------QUERY FOR INVOICE PAYMENTS----------------------

SELECT * FROM AP_INVOICE_PAYMENTS_ALL WHERE INVOICE_ID='683282';-- BLANK OUTPUT/NO DATA

SELECT * FROM AP_CHECKS_ALL;-- ALL TABLE DETAILS OF AP_CHECKS_ALL 

SELECT INVOICE_ID FROM AP_INVOICES_ALL AIA WHERE INVOICE_NUM='PATEST1';-- USING INVOICE_NUM TO GET THE INVOICE_ID

--GOT INVOICE_ID: 660065

SELECT * FROM AP_INVOICE_PAYMENTS_ALL WHERE INVOICE_ID='660065';-- ALL DETAILS OF INVOICE WHERE INVOICE_ID IS 660065

--AMOUNT: 22785
--INVOICE_PAYMENT_ID: 315723


------------------QUERY FOR RECEIPTS--------------------------------------
SELECT * FROM RCV_SHIPMENT_HEADERS WHERE RECEIPT_NUM='1451';-- NO DATA

--RECEIPT_NUMBER: 1451

SELECT * FROM AR_CASH_RECEIPTS_ALL
WHERE RECEIPT_NUMBER='1451'; --ALL INFO ABOUT RECEIPTS WHERE RECEIPT_NUMBER='1451'

--CASH_RECEIPT_ID: 271299



----------------------------QUERY FOR JOURNAL---------------------------------------

SELECT * FROM GL_JE_HEADERS WHERE NAME='RAJDEEP_JOURNAL';

--JE_HEADER_ID:7225894
--JOURNAL NAME: RAJDEEP_JOURNAL

SELECT * FROM GL_JE_HEADERS GJH, GL_JE_LINES GJL 
WHERE GJL.JE_HEADER_ID=GJH.JE_HEADER_ID AND NAME='RAJDEEP_JOURNAL';-- ALL DETAILS OF RAJDEEP_JOURNAL

--------------------------------------------------ASSIGNMENT 8 SOLUTIONS------------------------------------------------
--Q4. Write a query to display all the details of the RFQ you created.	
SELECT * FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA,PO_DISTRIBUTIONS_ALL PDA 
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID 
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID 
AND PDA.PO_LINE_ID=PLA.PO_LINE_ID 
AND SEGMENT1='300063' 
AND TYPE_LOOKUP_CODE='RFQ';


--Q5. Write a query to display all the details of the Quotation you created.
SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA,PO_DISTRIBUTIONS_ALL PDA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
AND PDA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='500070'
AND TYPE_LOOKUP_CODE='QUOTATION';

--Q6. Write a query to display all the details of the Purchase Order you created.
SELECT * 
FROM PO_HEADERS_ALL PHA, PO_LINES_ALL PLA,PO_LINE_LOCATIONS_ALL PLLA--,PO_DISTRIBUTIONS_ALL PDA
WHERE PLA.PO_HEADER_ID=PHA.PO_HEADER_ID
AND PLLA.PO_LINE_ID=PLA.PO_LINE_ID
--AND PDA.PO_LINE_ID=PLA.PO_LINE_ID
AND SEGMENT1='400743'
AND TYPE_LOOKUP_CODE='STANDARD';

--Q13. Write a query to display the type of Quotation you created







---Q8. Write a query to display the type of RFQ you created.
SELECT QUOTE_TYPE_LOOKUP_CODE 
FROM PO_HEADERS_ALL 
WHERE SEGMENT1='300063'
--AND TYPE_LOOKUP_CODE='RFQ'
;



