CREATE OR ALTER TRIGGER PRODUCT_Update ON Product
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Id int

	SELECT @Id = INSERTED.Id
	FROM INSERTED

	UPDATE Product
	SET Updated = GETDATE()
	WHERE @Id = Id

END