CREATE TABLE pivot_test (
  id            NUMBER,
  customer_id   NUMBER,
  product_code  VARCHAR2(5),
  quantity      NUMBER
);

INSERT INTO pivot_test VALUES (1, 1, 'A', 10);
INSERT INTO pivot_test VALUES (2, 1, 'B', 20);
INSERT INTO pivot_test VALUES (3, 1, 'C', 30);
INSERT INTO pivot_test VALUES (4, 2, 'A', 40);
INSERT INTO pivot_test VALUES (5, 2, 'C', 50);
INSERT INTO pivot_test VALUES (6, 3, 'A', 60);
INSERT INTO pivot_test VALUES (7, 3, 'B', 70);
INSERT INTO pivot_test VALUES (8, 3, 'C', 80);
INSERT INTO pivot_test VALUES (9, 3, 'D', 90);
INSERT INTO pivot_test VALUES (10, 4, 'A', 100);
COMMIT;

select * from pivot_test;


SELECT customer_id,
       SUM(DECODE(product_code, 'A', quantity, 0)) AS a_sum_quantity,
       SUM(DECODE(product_code, 'B', quantity, 0)) AS b_sum_quantity,
       SUM(DECODE(product_code, 'C', quantity, 0)) AS c_sum_quantity
FROM   pivot_test
GROUP BY customer_id
ORDER BY customer_id;



