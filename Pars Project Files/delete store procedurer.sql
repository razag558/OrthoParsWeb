 
 
Create PROCEDURE [dbo].[SP_Record_ofuser_Deleting]
(
	@id int 
)
AS
delete from [tbl_patient_registeration]
where ([id]=@id)
 
 
 



