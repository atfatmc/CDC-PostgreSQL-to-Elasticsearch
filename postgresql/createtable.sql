START TRANSACTION;

CREATE TABLE comments(
  id      SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  post_id INTEGER NOT NULL,
  comment    VARCHAR(500) NOT NULL
);

COMMIT;
