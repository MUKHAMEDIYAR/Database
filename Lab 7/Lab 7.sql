--2
CREATE ROLE accountant;
CREATE ROLE administrator;
CREATE ROLE support;
-- Drop ROLE accountant;
-- Drop ROLE administrator;
-- Drop ROLE support;
GRANT SELECT ON transactions TO accountant;
GRANT SELECT, UPDATE (balance) ON accounts TO accountant;
GRANT ALL PRIVILEGES ON SCHEMA lab7 TO administrator;
GRANT SELECT ON accounts,customers,transactions TO support;
select * FROM pg_roles;
CREATE USER Eren;
CREATE USER Armin;
CREATE USER Mikasa;
-- DROP USER Eren;
-- DROP USER Armin;
-- DROP USER Mikasa;

GRANT accountant TO Armin;
GRANT administrator TO Eren;
GRANT support TO Mikasa;

CREATE ROLE role_manager CREATEROLE;
GRANT role_manager to Eren;

REVOKE UPDATE ON accounts FROM accountant;
--3
SELECT * FROM transactions;
ALTER TABLE transactions
-- ALTER COlUMN * SET NOT NULL;
ALTER COLUMN date SET NOT NULL;
ALTER TABLE transactions
ALTER COLUMN src_account SET NOT NULL;
ALTER TABLE transactions
ALTER COLUMN dst_account SET NOT NULL;
ALTER TABLE transactions
ALTER COLUMN amount SET NOT NULL;
ALTER TABLE transactions
ALTER COLUMN status SET NOT NULL;

--4
CREATE TYPE Valuta as (sql char(3));
ALTER TABLE accounts
ALTER COLUMN currency TYPE Valuta USING currency :: valuta;
-- drop type valuta;
--5
CREATE UNIQUE INDEX idx_acc ON accounts(customer_id, currency);
CREATE INDEX search_t ON accounts(currency, balance);
--6
DO
$$
    DECLARE
        bal INT;
        lim INT;
    BEGIN
        UPDATE transactions SET status = 'init'
        WHERE id = 2;
        UPDATE accounts
        SET balance = balance - 400
        WHERE account_id = 'NK90123';
        UPDATE accounts
        SET balance = balance + 400
        WHERE account_id = 'AB10203';
        SELECT balance INTO bal FROM accounts
        WHERE account_id = 'NK90123';
        SELECT accounts.limit INTO lim FROM accounts
        WHERE account_id = 'NK90123';
        IF bal < lim THEN
            UPDATE transactions SET status = 'rollback' WHERE id = 2;
        ELSE
            COMMIT;
            UPDATE transactions SET status = 'commited' WHERE id = 2;
        END IF;
    END
$$