INSERT INTO CATEGORY (C_NAME, DESCRIPTION)
VALUES ('Antibiotics', 'Medicines for bacterial infections');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Painkillers', 'Medicines for pain relief');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Vitamins', 'Vitamin supplements');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Minerals', 'Mineral supplements');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Antifungal', 'Medicines for fungal infections');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Antiviral', 'Medicines for viral infections');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Antihistamines', 'Medicines for allergies');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Cough Medicines', 'Medicines for cough');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Cold Medicines', 'Medicines for cold symptoms');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Digestive Medicines', 'Medicines for digestive problems');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Antacids', 'Medicines for stomach acidity');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Diabetes Medicines', 'Medicines for blood sugar control');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Blood Pressure', 'Medicines for blood pressure');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Heart Medicines', 'Medicines for heart conditions');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Eye Drops', 'Medicines for eye conditions');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Ear Drops', 'Medicines for ear conditions');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Skin Care', 'Products for skin conditions');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Antiseptics', 'Products for infection prevention');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('First Aid', 'First aid products');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Respiratory', 'Medicines for breathing conditions');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Muscle Relaxants', 'Medicines for muscle relaxation');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Anti-inflammatory', 'Medicines for inflammation');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Hormones', 'Hormonal medicines');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Anesthetics', 'Medicines for anesthesia');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Antidepressants', 'Medicines for depression');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Neurological', 'Medicines for nervous system conditions');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Oral Care', 'Products for oral health');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Baby Care', 'Healthcare products for babies');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Medical Supplies', 'General medical supplies');
INSERT INTO CATEGORY (C_NAME, DESCRIPTION) VALUES ('Other Medicines', 'Other pharmaceutical products');




INSERT INTO MEDICINE
(M_ID, M_NAME, GENERIC_NAME, STRENGTH,
 DOSAGE_FORM, PRICE, CATEGORY_ID, DESCRIPTION)
SELECT 1, 'Amoxicillin 500mg', 'Amoxicillin', '500mg',
       'Capsule', 9, C_ID, 'Antibiotic medicine'
FROM CATEGORY WHERE C_NAME = 'Antibiotics';

INSERT INTO MEDICINE
SELECT 2, 'Ibuprofen 400mg', 'Ibuprofen', '400mg',
       'Tablet', 5, C_ID, 'Pain and inflammation relief'
FROM CATEGORY WHERE C_NAME = 'Painkillers';

INSERT INTO MEDICINE
SELECT 3, 'Vitamin C 500mg', 'Ascorbic Acid', '500mg',
       'Tablet', 4, C_ID, 'Vitamin supplement'
FROM CATEGORY WHERE C_NAME = 'Vitamins';

INSERT INTO MEDICINE
SELECT 4, 'Vitamin D3', 'Cholecalciferol', '1000 IU',
       'Capsule', 6, C_ID, 'Vitamin D supplement'
FROM CATEGORY WHERE C_NAME = 'Vitamins';

INSERT INTO MEDICINE
SELECT 5, 'Ferrous Sulfate', 'Ferrous Sulfate', '325mg',
       'Tablet', 5, C_ID, 'Iron supplement'
FROM CATEGORY WHERE C_NAME = 'Minerals';
INSERT INTO MEDICINE
SELECT 6, 'Fluconazole', 'Fluconazole', '150mg',
       'Capsule', 12, C_ID, 'Antifungal medicine'
FROM CATEGORY WHERE C_NAME = 'Antifungal';

INSERT INTO MEDICINE
SELECT 7, 'Acyclovir', 'Acyclovir', '400mg',
       'Tablet', 10, C_ID, 'Antiviral medicine'
FROM CATEGORY WHERE C_NAME = 'Antiviral';

INSERT INTO MEDICINE
SELECT 8, 'Cetirizine', 'Cetirizine', '10mg',
       'Tablet', 3, C_ID, 'Allergy relief'
FROM CATEGORY WHERE C_NAME = 'Antihistamines';

INSERT INTO MEDICINE
SELECT 9, 'Dextromethorphan Syrup', 'Dextromethorphan', '15mg/5ml',
       'Syrup', 7, C_ID, 'Cough relief'
FROM CATEGORY WHERE C_NAME = 'Cough Medicines';

INSERT INTO MEDICINE
SELECT 10, 'Cold Relief Tablets', 'Combination', 'Standard',
       'Tablet', 6, C_ID, 'Cold symptom relief'
FROM CATEGORY WHERE C_NAME = 'Cold Medicines';

INSERT INTO MEDICINE
SELECT 11, 'Omeprazole', 'Omeprazole', '20mg',
       'Capsule', 5, C_ID, 'Reduces stomach acid'
FROM CATEGORY WHERE C_NAME = 'Digestive Medicines';

INSERT INTO MEDICINE
SELECT 12, 'Aluminium Hydroxide', 'Aluminium Hydroxide', '200mg',
       'Tablet', 4, C_ID, 'Antacid medicine'
FROM CATEGORY WHERE C_NAME = 'Antacids';

INSERT INTO MEDICINE
SELECT 13, 'Metformin', 'Metformin', '500mg',
       'Tablet', 5, C_ID, 'Diabetes medicine'
FROM CATEGORY WHERE C_NAME = 'Diabetes Medicines';

INSERT INTO MEDICINE
SELECT 14, 'Amlodipine', 'Amlodipine', '5mg',
       'Tablet', 6, C_ID, 'Blood pressure medicine'
FROM CATEGORY WHERE C_NAME = 'Blood Pressure';

INSERT INTO MEDICINE
SELECT 15, 'Atorvastatin', 'Atorvastatin', '20mg',
       'Tablet', 9, C_ID, 'Cholesterol medicine'
FROM CATEGORY WHERE C_NAME = 'Heart Medicines';

INSERT INTO MEDICINE
SELECT 16, 'Artificial Tears', 'Lubricant Eye Drops', '0.5%',
       'Eye Drops', 8, C_ID, 'Eye lubrication'
FROM CATEGORY WHERE C_NAME = 'Eye Drops';

INSERT INTO MEDICINE
SELECT 17, 'Ciprofloxacin Ear Drops', 'Ciprofloxacin', '0.3%',
       'Ear Drops', 9, C_ID, 'Ear medicine'
FROM CATEGORY WHERE C_NAME = 'Ear Drops';

INSERT INTO MEDICINE
SELECT 18, 'Hydrocortisone Cream', 'Hydrocortisone', '1%',
       'Cream', 7, C_ID, 'Skin cream'
FROM CATEGORY WHERE C_NAME = 'Skin Care';

INSERT INTO MEDICINE
SELECT 19, 'Povidone Iodine', 'Povidone Iodine', '10%',
       'Solution', 8, C_ID, 'Antiseptic solution'
FROM CATEGORY WHERE C_NAME = 'Antiseptics';

INSERT INTO MEDICINE
SELECT 20, 'Medical Gauze', 'Gauze', 'Standard',
       'Dressing', 2, C_ID, 'First aid dressing'
FROM CATEGORY WHERE C_NAME = 'First Aid';

INSERT INTO MEDICINE
SELECT 21, 'Salbutamol Inhaler', 'Salbutamol', '100mcg',
       'Inhaler', 12, C_ID, 'Respiratory medicine'
FROM CATEGORY WHERE C_NAME = 'Respiratory';

INSERT INTO MEDICINE
SELECT 22, 'Baclofen', 'Baclofen', '10mg',
       'Tablet', 7, C_ID, 'Muscle relaxant'
FROM CATEGORY WHERE C_NAME = 'Muscle Relaxants';

INSERT INTO MEDICINE
SELECT 23, 'Diclofenac', 'Diclofenac', '50mg',
       'Tablet', 5, C_ID, 'Anti-inflammatory medicine'
FROM CATEGORY WHERE C_NAME = 'Anti-inflammatory';

INSERT INTO MEDICINE
SELECT 24, 'Levothyroxine', 'Levothyroxine', '50mcg',
       'Tablet', 8, C_ID, 'Hormone medicine'
FROM CATEGORY WHERE C_NAME = 'Hormones';

INSERT INTO MEDICINE
SELECT 25, 'Lidocaine', 'Lidocaine', '2%',
       'Injection', 10, C_ID, 'Local anesthetic'
FROM CATEGORY WHERE C_NAME = 'Anesthetics';

INSERT INTO MEDICINE
SELECT 26, 'Fluoxetine', 'Fluoxetine', '20mg',
       'Capsule', 9, C_ID, 'Antidepressant medicine'
FROM CATEGORY WHERE C_NAME = 'Antidepressants';

INSERT INTO MEDICINE
SELECT 27, 'Carbamazepine', 'Carbamazepine', '200mg',
       'Tablet', 8, C_ID, 'Neurological medicine'
FROM CATEGORY WHERE C_NAME = 'Neurological';

INSERT INTO MEDICINE
SELECT 28, 'Chlorhexidine Mouthwash', 'Chlorhexidine', '0.2%',
       'Mouthwash', 6, C_ID, 'Oral care product'
FROM CATEGORY WHERE C_NAME = 'Oral Care';

INSERT INTO MEDICINE
SELECT 29, 'Zinc Oxide Baby Cream', 'Zinc Oxide', '10%',
       'Cream', 5, C_ID, 'Baby skin care'
FROM CATEGORY WHERE C_NAME = 'Baby Care';

INSERT INTO MEDICINE
SELECT 30, 'Paracetamol 500mg', 'Paracetamol', '500mg',
       'Tablet', 3, C_ID, 'Pain relief medicine'
FROM CATEGORY WHERE C_NAME = 'Painkillers';






INSERT INTO SUPPLIER
(S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES
('Afghan Health Supply',
 'Mohammad Ali',
 '0700000002',
 'afghan2@example.com',
 'Kabul, Afghanistan');

INSERT INTO SUPPLIER
(S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES
('Kabul Medical Center Supply',
 'Ahmad Khan',
 '0700000003',
 'kabul3@example.com',
 'Kabul, Afghanistan');
 

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Kandahar Medical Traders', 'Gul Ahmad', '0700000005', 'kandahar5@example.com', 'Kandahar, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Balkh Health Distributors', 'Mohammad Omar', '0700000006', 'balkh6@example.com', 'Mazar-e-Sharif, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Nangarhar Pharma Supply', 'Farid Khan', '0700000007', 'nangarhar7@example.com', 'Jalalabad, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Paktia Medical Supply', 'Habibullah', '0700000008', 'paktia8@example.com', 'Gardez, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Kunduz Pharmaceutical Traders', 'Samiullah', '0700000009', 'kunduz9@example.com', 'Kunduz, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Badakhshan Health Supply', 'Nasir Ahmad', '0700000010', 'badakhshan10@example.com', 'Faizabad, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Bamyan Medical Traders', 'Zabihullah', '0700000011', 'bamyan11@example.com', 'Bamyan, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Ghazni Pharma Distributors', 'Abdul Wali', '0700000012', 'ghazni12@example.com', 'Ghazni, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Farah Medical Supply', 'Sardar Khan', '0700000013', 'farah13@example.com', 'Farah, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Helmand Pharmaceutical Supply', 'Mohammad Nabi', '0700000014', 'helmand14@example.com', 'Lashkar Gah, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Faryab Health Traders', 'Ahmad Shah', '0700000015', 'faryab15@example.com', 'Maimana, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Samangan Medical Supply', 'Abdul Basir', '0700000016', 'samangan16@example.com', 'Samangan, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Takhar Pharma Traders', 'Mohammad Sadiq', '0700000017', 'takhar17@example.com', 'Taloqan, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Uruzgan Health Supply', 'Karimullah', '0700000018', 'uruzgan18@example.com', 'Tarin Kot, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Zabul Medical Distributors', 'Abdul Hadi', '0700000019', 'zabul19@example.com', 'Qalat, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Panjshir Pharmaceutical Supply', 'Shafiullah', '0700000020', 'panjshir20@example.com', 'Panjshir, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Parwan Health Traders', 'Ahmad Zahir', '0700000021', 'parwan21@example.com', 'Charikar, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Kapisa Medical Supply', 'Nematullah', '0700000022', 'kapisa22@example.com', 'Mahmud Raqi, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Logar Pharmaceutical Traders', 'Wahidullah', '0700000023', 'logar23@example.com', 'Pul-e-Alam, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Wardak Health Distributors', 'Abdul Qadir', '0700000024', 'wardak24@example.com', 'Maidan Shahr, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Badghis Medical Supply', 'Mohammad Anwar', '0700000025', 'badghis25@example.com', 'Qala-e-Naw, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Ghor Pharmaceutical Supply', 'Sami Khan', '0700000026', 'ghor26@example.com', 'Chaghcharan, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Nimroz Medical Traders', 'Abdul Latif', '0700000027', 'nimroz27@example.com', 'Zaranj, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Khost Health Supply', 'Mohammad Haroon', '0700000028', 'khost28@example.com', 'Khost, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Paktika Pharmaceutical Supply', 'Abdul Mateen', '0700000029', 'paktika29@example.com', 'Sharana, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Daykundi Medical Distributors', 'Noor Ahmad', '0700000030', 'daykundi30@example.com', 'Nili, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Nuristan Health Traders', 'Mohammad Amin', '0700000031', 'nuristan31@example.com', 'Parun, Afghanistan');

INSERT INTO SUPPLIER (S_NAME, CONTACT_PERSON, PHONE, EMAIL, ADDRESS)
VALUES ('Herat Pharmaceutical Supply', 'Abdul Rahman', '0700000004', 'herat4@example.com', 'Herat, Afghanistan');


INSERT INTO MEDICINE_SUPPLIER (MEDICINE_ID, SUPPLIER_ID)
SELECT M.M_ID, S.S_ID
FROM MEDICINE M
JOIN SUPPLIER S
ON S.S_NAME = CASE M.M_ID
    WHEN 1 THEN 'Afghan Health Supply'
    WHEN 2 THEN 'Kabul Medical Center Supply'
    WHEN 3 THEN 'Kandahar Medical Traders'
    WHEN 4 THEN 'Balkh Health Distributors'
    WHEN 5 THEN 'Nangarhar Pharma Supply'
    WHEN 6 THEN 'Paktia Medical Supply'
    WHEN 7 THEN 'Kunduz Pharmaceutical Traders'
    WHEN 8 THEN 'Badakhshan Health Supply'
    WHEN 9 THEN 'Bamyan Medical Traders'
    WHEN 10 THEN 'Ghazni Pharma Distributors'
    WHEN 11 THEN 'Farah Medical Supply'
    WHEN 12 THEN 'Helmand Pharmaceutical Supply'
    WHEN 13 THEN 'Faryab Health Traders'
    WHEN 14 THEN 'Samangan Medical Supply'
    WHEN 15 THEN 'Takhar Pharma Traders'
    WHEN 16 THEN 'Uruzgan Health Supply'
    WHEN 17 THEN 'Zabul Medical Distributors'
    WHEN 18 THEN 'Panjshir Pharmaceutical Supply'
    WHEN 19 THEN 'Parwan Health Traders'
    WHEN 20 THEN 'Kapisa Medical Supply'
    WHEN 21 THEN 'Logar Pharmaceutical Traders'
    WHEN 22 THEN 'Wardak Health Distributors'
    WHEN 23 THEN 'Badghis Medical Supply'
    WHEN 24 THEN 'Ghor Pharmaceutical Supply'
    WHEN 25 THEN 'Nimroz Medical Traders'
    WHEN 26 THEN 'Khost Health Supply'
    WHEN 27 THEN 'Paktika Pharmaceutical Supply'
    WHEN 28 THEN 'Daykundi Medical Distributors'
    WHEN 29 THEN 'Nuristan Health Traders'
    WHEN 30 THEN 'Herat Pharmaceutical Supply'
END
WHERE NOT EXISTS (
    SELECT 1
    FROM MEDICINE_SUPPLIER MS
    WHERE MS.MEDICINE_ID = M.M_ID
      AND MS.SUPPLIER_ID = S.S_ID
);

INSERT INTO INVENTORY (
    MEDICINE_ID,
    SUPPLIER_ID,
    BATCH_NUMBER,
    EXPIRY_DATE,
    QUANTITY,
    PURCHASE_PRICE,
    RECEIVED_DATE
)
SELECT
    MS.MEDICINE_ID,
    MS.SUPPLIER_ID,
    'BATCH-' || MS.MEDICINE_ID,
    ADD_MONTHS(TRUNC(SYSDATE), 12 + MOD(MS.MEDICINE_ID, 12)),
    50 + MOD(MS.MEDICINE_ID * 7, 151),
    ROUND(M.PRICE * 0.65, 2),
    TRUNC(SYSDATE) - MOD(MS.MEDICINE_ID, 30)
FROM MEDICINE_SUPPLIER MS
JOIN MEDICINE M
    ON M.M_ID = MS.MEDICINE_ID
WHERE NOT EXISTS (
    SELECT 1
    FROM INVENTORY I
    WHERE I.MEDICINE_ID = MS.MEDICINE_ID
      AND I.BATCH_NUMBER = 'BATCH-' || MS.MEDICINE_ID
);

INSERT INTO CUSTOMER
(CUSTOMER_NAME, PHONE, EMAIL, ADDRESS)

SELECT 'Ahmad Khan', '0701000001', 'ahmad1@example.com', 'Kabul, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Mohammad Ali', '0701000002', 'mohammad2@example.com', 'Kandahar, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Rahman', '0701000003', 'rahman3@example.com', 'Herat, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Gul Ahmad', '0701000004', 'gul4@example.com', 'Kabul, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Farid Khan', '0701000005', 'farid5@example.com', 'Jalalabad, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Habibullah', '0701000006', 'habib6@example.com', 'Gardez, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Samiullah', '0701000007', 'sami7@example.com', 'Kunduz, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Nasir Ahmad', '0701000008', 'nasir8@example.com', 'Faizabad, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Zabihullah', '0701000009', 'zabi9@example.com', 'Bamyan, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Wali', '0701000010', 'wali10@example.com', 'Ghazni, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Sardar Khan', '0701000011', 'sardar11@example.com', 'Farah, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Mohammad Nabi', '0701000012', 'nabi12@example.com', 'Helmand, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Ahmad Shah', '0701000013', 'shah13@example.com', 'Maimana, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Basir', '0701000014', 'basir14@example.com', 'Samangan, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Mohammad Sadiq', '0701000015', 'sadiq15@example.com', 'Takhar, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Karimullah', '0701000016', 'karim16@example.com', 'Uruzgan, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Hadi', '0701000017', 'hadi17@example.com', 'Zabul, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Shafiullah', '0701000018', 'shafi18@example.com', 'Panjshir, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Ahmad Zahir', '0701000019', 'zahir19@example.com', 'Parwan, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Nematullah', '0701000020', 'nemat20@example.com', 'Kapisa, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Wahidullah', '0701000021', 'wahid21@example.com', 'Logar, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Qadir', '0701000022', 'qadir22@example.com', 'Wardak, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Mohammad Anwar', '0701000023', 'anwar23@example.com', 'Badghis, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Sami Khan', '0701000024', 'sami24@example.com', 'Ghor, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Latif', '0701000025', 'latif25@example.com', 'Nimroz, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Mohammad Haroon', '0701000026', 'haroon26@example.com', 'Khost, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Mateen', '0701000027', 'mateen27@example.com', 'Paktika, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Noor Ahmad', '0701000028', 'noor28@example.com', 'Daykundi, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Mohammad Amin', '0701000029', 'amin29@example.com', 'Nuristan, Afghanistan' FROM DUAL
UNION ALL
SELECT 'Abdul Samad', '0701000030', 'samad30@example.com', 'Kabul, Afghanistan' FROM DUAL;


INSERT INTO EMPLOYEE
(EMPLOYEE_NAME, GENDER, PHONE, EMAIL, ADDRESS, JOB_TITLE, SALARY, HIRE_DATE)
SELECT 'Ahmad Khan', 'Male', '0791000001', 'ahmad.emp1@example.com', 'Kabul, Afghanistan', 'Pharmacist', 25000, DATE '2025-01-10' FROM DUAL
UNION ALL
SELECT 'Mohammad Ali', 'Male', '0791000002', 'ali.emp2@example.com', 'Kandahar, Afghanistan', 'Cashier', 15000, DATE '2025-02-15' FROM DUAL
UNION ALL
SELECT 'Fatima Ahmad', 'Female', '0791000003', 'fatima.emp3@example.com', 'Herat, Afghanistan', 'Pharmacist', 24000, DATE '2025-03-01' FROM DUAL
UNION ALL
SELECT 'Abdul Rahman', 'Male', '0791000004', 'rahman.emp4@example.com', 'Kabul, Afghanistan', 'Store Manager', 30000, DATE '2025-01-20' FROM DUAL
UNION ALL
SELECT 'Maryam Ali', 'Female', '0791000005', 'maryam.emp5@example.com', 'Jalalabad, Afghanistan', 'Cashier', 15000, DATE '2025-04-05' FROM DUAL
UNION ALL
SELECT 'Farid Khan', 'Male', '0791000006', 'farid.emp6@example.com', 'Kunduz, Afghanistan', 'Pharmacy Assistant', 18000, DATE '2025-02-10' FROM DUAL
UNION ALL
SELECT 'Aisha Ahmad', 'Female', '0791000007', 'aisha.emp7@example.com', 'Kabul, Afghanistan', 'Pharmacist', 26000, DATE '2025-05-12' FROM DUAL
UNION ALL
SELECT 'Gul Mohammad', 'Male', '0791000008', 'gul.emp8@example.com', 'Balkh, Afghanistan', 'Cashier', 14500, DATE '2025-03-18' FROM DUAL
UNION ALL
SELECT 'Zahra Khan', 'Female', '0791000009', 'zahra.emp9@example.com', 'Herat, Afghanistan', 'Pharmacy Assistant', 17500, DATE '2025-06-01' FROM DUAL
UNION ALL
SELECT 'Samiullah', 'Male', '0791000010', 'sami.emp10@example.com', 'Ghazni, Afghanistan', 'Store Keeper', 19000, DATE '2025-04-20' FROM DUAL
UNION ALL
SELECT 'Nasir Ahmad', 'Male', '0791000011', 'nasir.emp11@example.com', 'Kabul, Afghanistan', 'Pharmacist', 25000, DATE '2025-07-01' FROM DUAL
UNION ALL
SELECT 'Hafiza Noor', 'Female', '0791000012', 'hafiza.emp12@example.com', 'Kandahar, Afghanistan', 'Cashier', 15000, DATE '2025-05-15' FROM DUAL
UNION ALL
SELECT 'Wahidullah', 'Male', '0791000013', 'wahid.emp13@example.com', 'Parwan, Afghanistan', 'Pharmacy Assistant', 18000, DATE '2025-06-20' FROM DUAL
UNION ALL
SELECT 'Shabana Ali', 'Female', '0791000014', 'shabana.emp14@example.com', 'Kabul, Afghanistan', 'Pharmacist', 24500, DATE '2025-08-01' FROM DUAL
UNION ALL
SELECT 'Abdul Basir', 'Male', '0791000015', 'basir.emp15@example.com', 'Khost, Afghanistan', 'Store Keeper', 19000, DATE '2025-07-10' FROM DUAL
UNION ALL
SELECT 'Nadia Ahmad', 'Female', '0791000016', 'nadia.emp16@example.com', 'Herat, Afghanistan', 'Cashier', 15500, DATE '2025-09-05' FROM DUAL
UNION ALL
SELECT 'Karimullah', 'Male', '0791000017', 'karim.emp17@example.com', 'Kabul, Afghanistan', 'Pharmacist', 25500, DATE '2025-08-15' FROM DUAL
UNION ALL
SELECT 'Laila Mohammad', 'Female', '0791000018', 'laila.emp18@example.com', 'Balkh, Afghanistan', 'Pharmacy Assistant', 18000, DATE '2025-10-01' FROM DUAL
UNION ALL
SELECT 'Abdul Hadi', 'Male', '0791000019', 'hadi.emp19@example.com', 'Ghazni, Afghanistan', 'Cashier', 15000, DATE '2025-09-20' FROM DUAL
UNION ALL
SELECT 'Sadia Khan', 'Female', '0791000020', 'sadia.emp20@example.com', 'Kabul, Afghanistan', 'Pharmacist', 25000, DATE '2025-10-15' FROM DUAL
UNION ALL
SELECT 'Mohammad Omar', 'Male', '0791000021', 'omar.emp21@example.com', 'Kandahar, Afghanistan', 'Store Manager', 31000, DATE '2025-02-01' FROM DUAL
UNION ALL
SELECT 'Ruqia Ahmad', 'Female', '0791000022', 'ruqia.emp22@example.com', 'Jalalabad, Afghanistan', 'Cashier', 15000, DATE '2025-11-01' FROM DUAL
UNION ALL
SELECT 'Habibullah', 'Male', '0791000023', 'habib.emp23@example.com', 'Kabul, Afghanistan', 'Pharmacy Assistant', 18500, DATE '2025-10-20' FROM DUAL
UNION ALL
SELECT 'Parwana Ali', 'Female', '0791000024', 'parwana.emp24@example.com', 'Herat, Afghanistan', 'Pharmacist', 25000, DATE '2025-11-05' FROM DUAL
UNION ALL
SELECT 'Abdul Qadir', 'Male', '0791000025', 'qadir.emp25@example.com', 'Kunduz, Afghanistan', 'Store Keeper', 19500, DATE '2025-06-15' FROM DUAL
UNION ALL
SELECT 'Mina Khan', 'Female', '0791000026', 'mina.emp26@example.com', 'Kabul, Afghanistan', 'Cashier', 15500, DATE '2025-12-01' FROM DUAL
UNION ALL
SELECT 'Mohammad Sadiq', 'Male', '0791000027', 'sadiq.emp27@example.com', 'Balkh, Afghanistan', 'Pharmacist', 26000, DATE '2025-07-20' FROM DUAL
UNION ALL
SELECT 'Nargis Ahmad', 'Female', '0791000028', 'nargis.emp28@example.com', 'Kandahar, Afghanistan', 'Pharmacy Assistant', 18000, DATE '2025-09-10' FROM DUAL
UNION ALL
SELECT 'Abdul Mateen', 'Male', '0791000029', 'mateen.emp29@example.com', 'Ghazni, Afghanistan', 'Cashier', 15000, DATE '2025-11-15' FROM DUAL
UNION ALL
SELECT 'Noor Ahmad', 'Male', '0791000030', 'noor.emp30@example.com', 'Kabul, Afghanistan', 'Pharmacist', 25000, DATE '2025-12-10' FROM DUAL;



INSERT INTO SALE
(CUSTOMER_ID, EMPLOYEE_ID, SALE_DATE, TOTAL_AMOUNT)

SELECT
    C.CUSTOMER_ID,
    E.EMPLOYEE_ID,
    TRUNC(SYSDATE) - MOD(C.RN, 30),
    0
FROM (
    SELECT
        CUSTOMER_ID,
        ROW_NUMBER() OVER (ORDER BY CUSTOMER_ID) AS RN
    FROM CUSTOMER
) C
JOIN (
    SELECT
        EMPLOYEE_ID,
        ROW_NUMBER() OVER (ORDER BY EMPLOYEE_ID) AS RN
    FROM EMPLOYEE
) E
ON C.RN = E.RN
WHERE C.RN <= 30;


INSERT INTO SALE_DETAIL (
    SALE_ID,
    INVENTORY_ID,
    QUANTITY,
    UNIT_PRICE,
    SUBTOTAL
)
SELECT
    S.SALE_ID,
    I.INVENTORY_ID,
    2 + MOD(S.RN, 4),
    M.PRICE,
    (2 + MOD(S.RN, 4)) * M.PRICE
FROM (
    SELECT
        SALE_ID,
        ROW_NUMBER() OVER (ORDER BY SALE_ID) AS RN
    FROM SALE
) S
JOIN (
    SELECT
        INVENTORY_ID,
        MEDICINE_ID,
        ROW_NUMBER() OVER (ORDER BY INVENTORY_ID) AS RN
    FROM INVENTORY
) I
    ON S.RN = I.RN
JOIN MEDICINE M
    ON I.MEDICINE_ID = M.M_ID
WHERE S.RN <= 30;




INSERT INTO SYSTEM_SETTING (LOW_STOCK_LIMIT)
VALUES (10);


