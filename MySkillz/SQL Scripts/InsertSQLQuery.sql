USE MySQLDB;
GO
BEGIN TRY
	BEGIN TRAN
		INSERT INTO TuMesa (TuMesaDescription) values ('First Row Description');
		INSERT INTO TuMesa (TuMesaDescription) values ('Second Row Description');
		INSERT INTO TuMesa (TuMesaDescription) values ('Third Row Description');
		INSERT INTO TuMesa (TuMesaDescription) values ('Fourth Row Description');
		INSERT INTO TuMesa (TuMesaDescription) values ('Fivth Row Description');
	COMMIT TRAN;
	SELECT * FROM TuMesa;
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK TRAN
END CATCH
GO