if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_USER_POSITION_GROUP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
Begin
	-- tao table
	CREATE TABLE [dbo].[T_USER_POSITION_GROUP] (
		[PK_POSITION_GROUP] [int] IDENTITY (1, 1) NOT NULL ,
		[C_CODE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
		[C_NAME] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
		[C_ORDER] [smallint] NULL ,
		[C_STATUS] [bit] NOT NULL 
	) ON [PRIMARY]
	-- Dat primary key
	ALTER TABLE [dbo].[T_USER_POSITION] ADD 
		CONSTRAINT [PK_T_USER_POSITION1] PRIMARY KEY  NONCLUSTERED 
		(
			[PK_POSITION]
		)  ON [PRIMARY] ,
		CONSTRAINT [TC_T_USER_POSITION1] UNIQUE  NONCLUSTERED 
		(
			[C_CODE]
		)  ON [PRIMARY] ,
		CONSTRAINT [UQ__T_USER_POSITION__7E6CC920] UNIQUE  NONCLUSTERED 
		(
			[C_CODE]
		)  ON [PRIMARY] 
	-- Khoi tao cac gia tri
	Insert Into T_USER_POSITION_GROUP(C_CODE,C_NAME,C_ORDER,C_STATUS) VALUES ('LANH_DAO_DAI',N'Lãnh đạo đài',1,1)
	Insert Into T_USER_POSITION_GROUP(C_CODE,C_NAME,C_ORDER,C_STATUS) VALUES ('LANH_DAO_DON_VI',N'Lãnh đạo ban',2,1)
	Insert Into T_USER_POSITION_GROUP(C_CODE,C_NAME,C_ORDER,C_STATUS) VALUES ('LANH_DAO_PHONG_BAN',N'Lãnh đạo phòng',3,1)
	Insert Into T_USER_POSITION_GROUP(C_CODE,C_NAME,C_ORDER,C_STATUS) VALUES ('NHAN_VIEN',N'Nhân viên',4,1)

End