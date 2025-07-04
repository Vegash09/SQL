USE playGround
SELECT * FROM INFO_PERSON

BEGIN TRANSACTION;
UPDATE INFO_PERSON
SET name = 'Vsh' WHERE Id = 1;

SELECT * FROM INFO_PERSON;

rollback;







/*

When you use BEGIN TRANSACTION, you're starting a process to change data.

You must end it using either COMMIT or ROLLBACK.

Use COMMIT to save the changes.

Use ROLLBACK to cancel the changes.

You can only commit or rollback once per transaction.

After you commit or rollback, the transaction is finished.

If you don’t end it, the table or row may stay locked and cause issues.

To start a new one, use BEGIN TRANSACTION again.

*/
