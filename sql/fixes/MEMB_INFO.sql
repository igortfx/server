USE [MuOnline];
GO

ALTER TABLE [dbo].[MEMB_INFO] ADD [VipExpirationTime] INT DEFAULT 0;
ALTER TABLE [dbo].[MEMB_INFO] ADD [IsVip] INT DEFAULT 0;
ALTER TABLE [dbo].[MEMB_INFO] ALTER COLUMN [memb_name] VARCHAR(50);

ALTER TABLE MEMB_INFO
    DROP CONSTRAINT PK_MEMB_INFO_1
GO

ALTER TABLE MEMB_INFO
    ALTER COLUMN memb___id VARCHAR(10) COLLATE Chinese_PRC_CI_AS NOT NULL

ALTER TABLE MEMB_INFO
    ADD CONSTRAINT PK_MEMB_INFO_1
        PRIMARY KEY NONCLUSTERED (memb___id)
GO

CREATE CLUSTERED INDEX IX_MEMB_INFO_1
    ON MEMB_INFO (memb___id DESC)
GO

CREATE UNIQUE NONCLUSTERED INDEX PK_MEMB_INFO_1
    ON MEMB_INFO (memb___id)
GO