-- 코드를 입력하세요
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS `RECORDS`
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
JOIN
(
    SELECT CAR_ID AS ID, COUNT(*) AS CNT FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE YEAR(START_DATE)=2022 AND MONTH(START_DATE) IN (8,9,10)
    GROUP BY CAR_ID
) SUB
ON SUB.ID=CAR_ID
WHERE SUB.CNT >= 5 AND YEAR(START_DATE)=2022 AND MONTH(START_DATE) IN (8,9,10)
GROUP BY MONTH(START_DATE), CAR_ID
ORDER BY MONTH(START_DATE) ASC, CAR_ID DESC