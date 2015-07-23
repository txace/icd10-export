
-- ----------------------------
--  Table structure for DX10
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[DX10]') AND type IN ('U'))
	DROP TABLE [dbo].[DX10]
GO
CREATE TABLE [dbo].[DX10] (
	[CID] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STAFF] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTSTAFF] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXDT] datetime NULL,
	[DXTIME] varchar(7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENTDT] datetime NULL,
	[ENTTM] varchar(7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CAREDT] datetime NULL,
	[REASON] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPIRE] datetime NULL,
	[PIMARYAX] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD101] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD91] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX1] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT1] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK1] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ1] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD102] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD92] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX2] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT2] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK2] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ2] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD103] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD93] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX3] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT3] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK3] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ3] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD104] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD94] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX4] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT4] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK4] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ4] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD105] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD95] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX5] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT5] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK5] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ5] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD106] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD96] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX6] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT6] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK6] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ6] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD107] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD97] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX7] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT7] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK7] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ7] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD108] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD98] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX8] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT8] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK8] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ8] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD109] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD99] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX9] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT9] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK9] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ9] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1010] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD910] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX10] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT10] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK10] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ10] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1011] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD911] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX11] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT11] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK11] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ11] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1012] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD912] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX12] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT12] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK12] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ12] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1013] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD913] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX13] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT13] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK13] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ13] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1014] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD914] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX14] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT14] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK14] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ14] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1015] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD915] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX15] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT15] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK15] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ15] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD1016] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ICD916] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LEGAX16] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXCAT16] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DXRANK16] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQ16] varchar(6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4SUPGRP] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4SOCENV] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4EDU] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4OCC] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4HOUSNG] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4ECO] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4HEALTH] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4LEGAL] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4PSYENV] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A4NONE] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[A5GAF] varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURRABL] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[POTABL] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COMMENT] varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SNAPID] varchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISN] varchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STAT] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TheKey] int IDENTITY(1,1) NOT NULL
)
ON [PRIMARY]
GO


-- ----------------------------
--  Primary key structure for table DX10
-- ----------------------------
ALTER TABLE [dbo].[DX10] ADD
	CONSTRAINT [PK__DX10__817A66C500F921A6] PRIMARY KEY CLUSTERED ([TheKey]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [default]
GO

-- ----------------------------
--  Options for table DX10
-- ----------------------------
ALTER TABLE [dbo].[DX10] SET (LOCK_ESCALATION = TABLE)
GO
DBCC CHECKIDENT ('[dbo].[DX10]', RESEED, 2182)
GO

