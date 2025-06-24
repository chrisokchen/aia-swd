-- SendMailLog 資料表設計
CREATE TABLE SendMailLog (
    id INT IDENTITY(1,1) PRIMARY KEY, -- 自動流水號
    from_email NVARCHAR(255) NOT NULL, -- 寄件者
    to_email NVARCHAR(255) NOT NULL,   -- 收件者
    bcc_email NVARCHAR(255),           -- 密件副本
    subject NVARCHAR(255) NOT NULL,    -- 主旨
    body NVARCHAR(MAX) NOT NULL,       -- 內容
    status int DEFAULT 0, -- 狀態: 0=pending, 1=sent, 9=failed
    created_at DATETIME DEFAULT GETDATE(), -- 建立時間
    sent_at DATETIME NULL,                  -- 寄送時間
    fail_reason NVARCHAR(255) NULL          -- 失敗原因
);
