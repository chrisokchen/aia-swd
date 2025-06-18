## 相關檔案

- `backend/models/task.js` - 任務資料表 schema 與操作。
- `backend/models/user.js` - 使用者資料表 schema。
- `backend/routes/task.js` - 任務相關 API 路由。
- `backend/routes/user.js` - 使用者註冊/登入/權限 API。
- `backend/routes/comment.js` - 任務留言 API。
- `frontend/src/components/KanbanBoard.jsx` - Kanban 主畫面元件。
- `frontend/src/components/TaskCard.jsx` - 任務卡片元件。
- `frontend/src/components/TaskDetail.jsx` - 任務詳情與留言元件。
- `frontend/src/components/ProgressReport.jsx` - 進度報告頁面。
- `frontend/src/api/index.js` - 前端 API 呼叫整合。
- `backend/tests/task.test.js` - 任務 API 單元測試。
- `frontend/src/components/__tests__/KanbanBoard.test.jsx` - Kanban UI 測試。

---

## 任務

- [ ] 1.0 設計與規劃系統架構
  - [ ] 1.1 設計資料庫 ERD（任務、使用者、留言、狀態等）
  - [ ] 1.2 規劃前後端技術棧與專案結構
  - [ ] 1.3 設定專案初始化（Git、Linter、README）

- [ ] 2.0 實作後端 API 與資料庫
  - [ ] 2.1 建立資料庫 schema 與模型（task, user, comment）
  - [ ] 2.2 實作使用者註冊/登入/權限 API
  - [ ] 2.3 實作任務 CRUD 與拆分 API
  - [ ] 2.4 實作任務認領、狀態流轉 API
  - [ ] 2.5 實作留言討論 API
  - [ ] 2.6 實作進度報告 API

- [ ] 3.0 實作前端 UI 與互動
  - [ ] 3.1 前端專案初始化與路由設計
  - [ ] 3.2 實作登入/註冊/權限切換頁面
  - [ ] 3.3 實作 Kanban 看板 UI（含拖曳）
  - [ ] 3.4 實作任務詳情、認領、狀態更新、留言
  - [ ] 3.5 實作進度報告頁面

- [ ] 4.0 處理多人協作與同步
  - [ ] 4.1 設計與實作多人同時操作的同步機制
  - [ ] 4.2 處理網路中斷時的錯誤提示與自動同步

- [ ] 5.0 撰寫測試與文件
  - [ ] 5.1 撰寫主要 API 與前端功能單元測試
  - [ ] 5.2 撰寫安裝、操作說明文件
