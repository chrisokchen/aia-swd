## 相關檔案

- `src/components/KanbanBoard.js` - 看板主界面組件
- `src/components/KanbanBoard.test.js` - 看板組件測試
- `src/api/taskService.js` - 任務API服務
- `src/api/taskService.test.js` - API服務測試
- `server/models/Task.js` - 任務數據模型
- `server/models/Task.test.js` - 模型測試
- `server/routes/taskRoutes.js` - 任務API路由
- `server/routes/taskRoutes.test.js` - 路由測試

### 備註

- 使用 Jest 執行測試：`npx jest`
- 測試文件與源文件保持相同目錄結構
- 組件測試使用 React Testing Library

## 任務

- [ ] 1.0 使用者管理系統
- [x] 1.1 設計用戶模型（角色、權限字段） [已完成]
  - [ ] 1.2 實現用戶註冊/登入API
  - [ ] 1.3 建立管理員控制面板UI
  - [ ] 1.4 實作角色權限中介層

- [ ] 2.0 工作項核心功能
  - [ ] 2.1 設計任務數據模型（標題/描述/負責人等）
  - [ ] 2.2 實現任務CRUD API
  - [ ] 2.3 開發任務編輯表單組件
  - [ ] 2.4 實作標籤管理系統
  - [ ] 2.5 建立附件上傳處理邏輯

- [ ] 3.0 看板交互系統
  - [ ] 3.1 實作三欄式響應布局
  - [ ] 3.2 整合react-dnd拖放功能
  - [ ] 3.3 開發任務卡片組件（含優先級色彩標示）
  - [ ] 3.4 實現篩選器組件（負責人/優先級/標籤）
  - [ ] 3.5 添加逾期任務閃爍動畫

- [ ] 4.0 任務進度計算
  - [ ] 4.1 設計父子任務關聯模型
  - [ ] 4.2 實現進度自動計算公式
  - [ ] 4.3 開發進度顯示組件（進度條/百分比）
  - [ ] 4.4 添加進度更新事件觸發器

- [ ] 5.0 審核工作流
  - [ ] 5.1 實作狀態轉換邏輯（待辦→進行→審核→完成）
  - [ ] 5.2 開發任務提交審核API
  - [ ] 5.3 建立審核操作面板
  - [ ] 5.4 實現任務退回工作流
