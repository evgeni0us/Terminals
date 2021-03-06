USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[InsertBeforeConnectExecute]    Script Date: 12/10/2012 22:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertBeforeConnectExecute]
	(
	@FavoriteId int,
  @Enabled bit,
  @Command nvarchar(255),
  @CommandArguments nvarchar(255),
  @InitialDirectory nvarchar(255),
  @WaitForExit bit
	)
AS
	insert into BeforeConnectExecute 
  (FavoriteId, Enabled, Command, CommandArguments, InitialDirectory,
   WaitForExit)
  
  values  (@FavoriteId, @Enabled, @Command, @CommandArguments,
  @InitialDirectory, @WaitForExit)
GO
