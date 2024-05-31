START TRANSACTION;

INSERT INTO comments(user_id, post_id, comment)
WITH expanded AS (
  SELECT RANDOM(), seq, seq AS user_id, seq AS post_id
  FROM GENERATE_SERIES(1, 100) seq
), shuffled AS (
  SELECT e.*
  FROM expanded e
  INNER JOIN (
    SELECT ei.seq, MIN(ei.random) FROM expanded ei GROUP BY ei.seq
  ) em ON (e.seq = em.seq AND e.random = em.min)
  ORDER BY e.seq
)
SELECT
  s.user_id,
  s.post_id,
  'Bu bir deneme yorumudur. Amacımız bu alanın Elasticsearch de full text search yapılmasını istiyorum. ' || s.seq AS comment
FROM shuffled s;
COMMIT;
