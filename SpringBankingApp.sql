CREATE TABLE users (
                       id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                       login VARCHAR(255) NOT NULL
);

CREATE TABLE accounts (
                          id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                          user_id INT NOT NULL,
                          money_amount INT ,
                          FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

DROP TABLE users;
DROP TABLE accounts;