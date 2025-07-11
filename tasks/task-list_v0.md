# 任務清單規則（task-list.md）

## 目標
將 PRD 內容拆解為細緻、可執行的任務，方便團隊分工與追蹤。

## 規則
1. 每個任務需明確、具體，描述清楚「要做什麼」與「完成標準」。
2. 任務需可獨立執行，避免過於籠統。
3. 建議以模組、功能、前後端分工等方式拆解。
4. 每個任務需標註優先順序（P0=最高、P1、P2...）。
5. 可依需求標註負責人、預估工時。
6. 以 Markdown 表格或清單格式呈現。

## 範例

| 任務編號 | 任務內容 | 優先順序 | 負責人 | 預估工時 | 完成標準 |
|---|---|---|---|---|---|
| 1 | 設計資料庫 schema | P0 |  | 4h | 完成 ERD 並通過審查 |
| 2 | 建立使用者註冊/登入 API | P0 |  | 6h | API 可正常註冊/登入 |
| 3 | 前端實作看板 UI | P1 |  | 8h | UI 可顯示任務欄位與卡片 |

---

請依此規則產生任務清單檔案。

| 任務編號 | 任務內容 | 優先順序 | 負責人 | 預估工時 | 完成標準 |
|---|---|---|---|---|---|
| 1 | 設計資料庫 schema（任務、使用者、狀態等） | P0 |  | 6h | 完成 ERD 並通過審查 |
| 2 | 建立後端專案架構（Node.js/Express 或 Django） | P0 |  | 4h | 專案可啟動並有基本路由 |
| 3 | 實作使用者註冊/登入/權限 API | P0 |  | 6h | API 可正常註冊/登入/權限分級 |
| 4 | 實作任務 CRUD 與拆分 API | P0 |  | 8h | 任務可新增/編輯/刪除/拆分 |
| 5 | 實作任務認領、狀態流轉 API | P0 |  | 6h | 任務可認領與狀態切換 |
| 6 | 實作留言討論 API | P1 |  | 4h | 任務下可留言討論 |
| 7 | 實作進度報告 API | P1 |  | 4h | 管理者可查詢進度報告 |
| 8 | 前端專案初始化（React/Vue/Angular） | P0 |  | 4h | 前端專案可啟動 |
| 9 | 前端實作登入/註冊/權限切換頁面 | P0 |  | 6h | 頁面可正常切換與驗證 |
| 10 | 前端實作 Kanban 看板 UI（含拖曳） | P0 |  | 10h | 可顯示多欄位與卡片拖曳 |
| 11 | 前端實作任務詳情、認領、狀態更新、留言 | P0 |  | 8h | 任務詳情可操作與留言 |
| 12 | 前端實作進度報告頁面 | P1 |  | 4h | 管理者可查詢進度 |
| 13 | 處理多人同時操作的同步與提示 | P1 |  | 6h | 不會發生資料衝突，並有提示 |
| 14 | 處理網路中斷時的錯誤提示與自動同步 | P1 |  | 4h | 中斷時有提示，恢復自動同步 |
| 15 | 撰寫基本測試（單元/整合） | P1 |  | 6h | 主要 API 與前端功能有測試 |
| 16 | 撰寫文件（安裝、操作說明） | P2 |  | 4h | 有 README 與操作說明 |
