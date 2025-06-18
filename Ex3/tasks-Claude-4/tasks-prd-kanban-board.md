## 相關檔案

- `src/components/KanbanBoard.tsx` - Kanban 主看板元件，顯示三個狀態欄與所有任務卡片
- `src/components/TaskCard.tsx` - 單一任務卡片元件，顯示任務資訊與操作按鈕
- `src/components/TaskModal.tsx` - 任務詳細資訊彈窗，支援編輯與留言功能
- `src/components/NotificationCenter.tsx` - 通知中心元件，顯示任務變更通知
- `src/pages/LoginPage.tsx` - 登入註冊頁面，處理使用者驗證
- `src/pages/DashboardPage.tsx` - 主控台頁面，包含 Kanban 看板
- `src/api/auth.ts` - 處理登入/登出與權限驗證的 API 路由
- `src/api/tasks.ts` - 處理任務 CRUD、指派、拆分的 API 路由
- `src/api/comments.ts` - 處理任務留言與討論的 API 路由
- `src/api/notifications.ts` - 處理通知機制的 API 路由
- `src/db/schema.sql` - 資料庫結構設計（users, tasks, comments, notifications, task_history）
- `src/utils/websocket.ts` - WebSocket 連線處理，支援即時通知
- `src/components/__tests__/KanbanBoard.test.tsx` - Kanban 看板元件單元測試
- `src/components/__tests__/TaskCard.test.tsx` - 任務卡片元件單元測試
- `src/api/__tests__/tasks.test.ts` - 任務管理 API 單元測試
- `src/api/__tests__/auth.test.ts` - 驗證 API 單元測試

### 備註

- 單元測試通常應與其對應的程式檔案放在同一目錄（例如：`MyComponent.tsx` 與 `MyComponent.test.tsx`）。
- 使用 `npx jest [optional/path/to/test/file]` 執行測試。不帶路徑時會執行 Jest 設定找到的所有測試。

## 任務

- [ ] 1.0 設計與建立資料庫結構
  - [ ] 1.1 設計 users 資料表（id, username, email, password_hash, role, created_at）
  - [ ] 1.2 設計 tasks 資料表（id, title, description, assignee_id, status, priority, due_date, estimated_hours, created_by, created_at, updated_at）
  - [ ] 1.3 設計 comments 資料表（id, task_id, user_id, content, created_at）
  - [ ] 1.4 設計 notifications 資料表（id, user_id, task_id, type, message, is_read, created_at）
  - [ ] 1.5 設計 task_history 資料表（id, task_id, user_id, action, old_value, new_value, created_at）
  - [ ] 1.6 撰寫 schema.sql 並建立資料庫
  - [ ] 1.7 建立資料庫索引優化查詢效能
  - [ ] 1.8 測試資料庫 schema 可正確建立與查詢

- [ ] 2.0 實作使用者驗證與權限控管系統
  - [ ] 2.1 設計用戶註冊 API（POST /api/auth/register）
  - [ ] 2.2 設計用戶登入 API（POST /api/auth/login）
  - [ ] 2.3 設計用戶登出 API（POST /api/auth/logout）
  - [ ] 2.4 實作 JWT token 產生與驗證機制
  - [ ] 2.5 實作權限中間件（區分管理者與一般成員）
  - [ ] 2.6 實作前端登入頁面（LoginPage.tsx）
  - [ ] 2.7 實作前端權限控制（條件渲染管理者功能）
  - [ ] 2.8 撰寫驗證 API 單元測試

- [ ] 3.0 開發 Kanban 看板與任務卡片核心元件
  - [ ] 3.1 設計 Kanban 看板 UI 結構（三欄：待辦、進行中、完成）
  - [ ] 3.2 實作 KanbanBoard.tsx 元件，顯示所有任務
  - [ ] 3.3 實作 TaskCard.tsx 元件，顯示任務基本資訊
  - [ ] 3.4 實作任務卡片拖曳功能（react-beautiful-dnd 或類似套件）
  - [ ] 3.5 實作任務詳細資訊彈窗（TaskModal.tsx）
  - [ ] 3.6 實作 DashboardPage.tsx 主控台頁面
  - [ ] 3.7 撰寫 KanbanBoard 與 TaskCard 元件單元測試

- [ ] 4.0 實作任務管理功能（CRUD、拆分、指派、認領、狀態流轉）
  - [ ] 4.1 實作取得所有任務 API（GET /api/tasks）
  - [ ] 4.2 實作新增任務 API（POST /api/tasks）
  - [ ] 4.3 實作編輯任務 API（PUT /api/tasks/:id）
  - [ ] 4.4 實作刪除任務 API（DELETE /api/tasks/:id）
  - [ ] 4.5 實作拆分任務功能（POST /api/tasks/:id/split）
  - [ ] 4.6 實作指派任務功能（PUT /api/tasks/:id/assign）
  - [ ] 4.7 實作認領任務功能（PUT /api/tasks/:id/claim）
  - [ ] 4.8 實作任務狀態更新 API（PUT /api/tasks/:id/status）
  - [ ] 4.9 前端整合任務管理功能按鈕與表單
  - [ ] 4.10 撰寫任務管理 API 單元測試

- [ ] 5.0 開發任務留言討論與即時通知系統
  - [ ] 5.1 實作任務留言 API（GET/POST /api/tasks/:id/comments）
  - [ ] 5.2 實作通知機制 API（GET /api/notifications）
  - [ ] 5.3 實作 WebSocket 連線處理（websocket.ts）
  - [ ] 5.4 實作即時通知推送功能
  - [ ] 5.5 實作 NotificationCenter.tsx 通知中心元件
  - [ ] 5.6 在 TaskModal 中整合留言功能
  - [ ] 5.7 實作任務變更自動記錄到 task_history
  - [ ] 5.8 撰寫留言與通知相關單元測試

- [ ] 6.0 整合測試與錯誤處理機制
  - [ ] 6.1 實作前端錯誤邊界（Error Boundary）
  - [ ] 6.2 實作後端統一錯誤處理中間件
  - [ ] 6.3 實作前端載入狀態與錯誤提示 UI
  - [ ] 6.4 撰寫端到端（E2E）測試腳本
  - [ ] 6.5 效能測試與優化（大量任務載入速度）
  - [ ] 6.6 整合所有功能並進行完整性測試

---

我已根據 PRD 產生高階任務。準備產生子任務了嗎？請回覆 "Go" 以繼續。
