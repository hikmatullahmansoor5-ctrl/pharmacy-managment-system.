CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_MEDICINE_INFO" (
    P_M_ID IN NUMBER
)
AS
BEGIN
    FOR REC IN (
        SELECT
            M_ID,
            M_NAME,
            GENERIC_NAME,
            STRENGTH,
            PRICE
        FROM MEDICINE
        WHERE M_ID = P_M_ID
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Medicine ID: ' || REC.M_ID);
        DBMS_OUTPUT.PUT_LINE('Medicine Name: ' || REC.M_NAME);
        DBMS_OUTPUT.PUT_LINE('Generic Name: ' || REC.GENERIC_NAME);
        DBMS_OUTPUT.PUT_LINE('Strength: ' || REC.STRENGTH);
        DBMS_OUTPUT.PUT_LINE('Price: ' || REC.PRICE);
    END LOOP;
END;
/





CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."ADD_NEW_MEDICINE" (
    P_M_NAME       IN VARCHAR2,
    P_GENERIC_NAME IN VARCHAR2,
    P_STRENGTH     IN VARCHAR2,
    P_DOSAGE_FORM  IN VARCHAR2,
    P_PRICE        IN NUMBER,
    P_CATEGORY_ID  IN NUMBER,
    P_DESCRIPTION  IN VARCHAR2
)
AS
    V_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO V_COUNT
    FROM MEDICINE
    WHERE UPPER(TRIM(M_NAME)) = UPPER(TRIM(P_M_NAME));

    IF V_COUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Medicine already exists!');
    ELSE
        INSERT INTO MEDICINE (
            M_NAME, GENERIC_NAME, STRENGTH,
            DOSAGE_FORM, PRICE, CATEGORY_ID, DESCRIPTION
        )
        VALUES (
            P_M_NAME, P_GENERIC_NAME, P_STRENGTH,
            P_DOSAGE_FORM, P_PRICE, P_CATEGORY_ID, P_DESCRIPTION
        );

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Medicine added successfully!');
    END IF;
END;
/


CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."UPDATE_MEDICINE_PRICE" (
    P_M_ID       IN NUMBER,
    P_NEW_PRICE  IN NUMBER
)
AS
BEGIN
    UPDATE MEDICINE
    SET PRICE = P_NEW_PRICE
    WHERE M_ID = P_M_ID;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Medicine not found!');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Medicine price updated successfully!');
    END IF;
END;
/



CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."DELETE_MEDICINE" (
    P_M_ID IN NUMBER
)
AS
    V_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO V_COUNT
    FROM INVENTORY
    WHERE MEDICINE_ID = P_M_ID;

    IF V_COUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'Cannot delete: Medicine exists in Inventory!'
        );
    ELSE
        DELETE FROM MEDICINE
        WHERE M_ID = P_M_ID;

        IF SQL%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Medicine not found!');
        ELSE
            COMMIT;
            DBMS_OUTPUT.PUT_LINE(
                'Medicine deleted successfully!'
            );
        END IF;
    END IF;
END;
/



CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_LOW_STOCK_MEDICINES"
AS
BEGIN
    FOR REC IN (
        SELECT
            M.M_ID,
            M.M_NAME,
            SUM(I.QUANTITY) AS TOTAL_STOCK,
            SS.LOW_STOCK_LIMIT
        FROM MEDICINE M
        JOIN INVENTORY I
            ON M.M_ID = I.MEDICINE_ID
        CROSS JOIN SYSTEM_SETTING SS
        WHERE I.EXPIRY_DATE >= TRUNC(SYSDATE)
        GROUP BY
            M.M_ID,
            M.M_NAME,
            SS.LOW_STOCK_LIMIT
        HAVING SUM(I.QUANTITY) <= SS.LOW_STOCK_LIMIT
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Medicine ID: ' || REC.M_ID ||
            ' | Name: ' || REC.M_NAME ||
            ' | Stock: ' || REC.TOTAL_STOCK ||
            ' | Limit: ' || REC.LOW_STOCK_LIMIT
        );
    END LOOP;
END;
/


CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_EXPIRED_MEDICINES"
AS
BEGIN
    FOR REC IN (
        SELECT
            I.INVENTORY_ID,
            M.M_NAME,
            I.BATCH_NUMBER,
            I.QUANTITY,
            I.EXPIRY_DATE
        FROM INVENTORY I
        JOIN MEDICINE M
            ON I.MEDICINE_ID = M.M_ID
        WHERE I.EXPIRY_DATE < TRUNC(SYSDATE)
        ORDER BY I.EXPIRY_DATE
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Inventory ID: ' || REC.INVENTORY_ID ||
            ' | Medicine: ' || REC.M_NAME ||
            ' | Batch: ' || REC.BATCH_NUMBER ||
            ' | Quantity: ' || REC.QUANTITY ||
            ' | Expiry Date: ' ||
            TO_CHAR(REC.EXPIRY_DATE, 'DD-MON-YYYY')
        );
    END LOOP;
END;
/



CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_SALES_REPORT"
AS
BEGIN
    FOR REC IN (
        SELECT
            SALE_ID,
            CUSTOMER_NAME,
            EMPLOYEE_NAME,
            SALE_DATE,
            TOTAL_AMOUNT
        FROM SALES_REPORT_VIEW
        ORDER BY SALE_ID
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Sale ID: ' || REC.SALE_ID ||
            ' | Customer: ' || NVL(REC.CUSTOMER_NAME, 'Walk-in') ||
            ' | Employee: ' || REC.EMPLOYEE_NAME ||
            ' | Date: ' || TO_CHAR(REC.SALE_DATE, 'DD-MON-YYYY') ||
            ' | Total: ' || REC.TOTAL_AMOUNT
        );
    END LOOP;
END;
/



CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_CUSTOMER_REPORT"
AS
BEGIN
    FOR REC IN (
        SELECT
            CUSTOMER_ID,
            CUSTOMER_NAME,
            PHONE,
            TOTAL_SALES,
            TOTAL_PURCHASE
        FROM CUSTOMER_REPORT_VIEW
        ORDER BY CUSTOMER_ID
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Customer ID: ' || REC.CUSTOMER_ID ||
            ' | Name: ' || REC.CUSTOMER_NAME ||
            ' | Phone: ' || REC.PHONE ||
            ' | Total Sales: ' || REC.TOTAL_SALES ||
            ' | Total Purchase: ' || REC.TOTAL_PURCHASE
        );
    END LOOP;
END;
/


CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_EMPLOYEE_REPORT"
AS
BEGIN
    FOR REC IN (
        SELECT
            EMPLOYEE_ID,
            EMPLOYEE_NAME,
            JOB_TITLE,
            PHONE,
            SALARY,
            TOTAL_SALES,
            TOTAL_SALES_AMOUNT
        FROM EMPLOYEE_REPORT_VIEW
        ORDER BY EMPLOYEE_ID
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Employee ID: ' || REC.EMPLOYEE_ID ||
            ' | Name: ' || REC.EMPLOYEE_NAME ||
            ' | Job: ' || REC.JOB_TITLE ||
            ' | Phone: ' || REC.PHONE ||
            ' | Salary: ' || REC.SALARY ||
            ' | Total Sales: ' || REC.TOTAL_SALES ||
            ' | Sales Amount: ' || REC.TOTAL_SALES_AMOUNT
        );
    END LOOP;
END;
/


CREATE OR REPLACE EDITIONABLE PROCEDURE "PHARMACY_MANAGEMENT"."GET_INVENTORY_REPORT"
AS
BEGIN
    FOR REC IN (
        SELECT
            INVENTORY_ID,
            M_NAME,
            SUPPLIER_NAME,
            BATCH_NUMBER,
            QUANTITY,
            PURCHASE_PRICE,
            EXPIRY_DATE,
            STOCK_VALUE
        FROM INVENTORY_REPORT_VIEW
        ORDER BY INVENTORY_ID
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Inventory ID: ' || REC.INVENTORY_ID ||
            ' | Medicine: ' || REC.M_NAME ||
            ' | Supplier: ' || REC.SUPPLIER_NAME ||
            ' | Batch: ' || REC.BATCH_NUMBER ||
            ' | Quantity: ' || REC.QUANTITY ||
            ' | Purchase Price: ' || REC.PURCHASE_PRICE ||
            ' | Expiry: ' ||
            TO_CHAR(REC.EXPIRY_DATE, 'DD-MON-YYYY') ||
            ' | Stock Value: ' || REC.STOCK_VALUE
        );
    END LOOP;
END;
/