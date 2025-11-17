# CLAUDE.md - AI 助手協作指南

本文件為 AI 助手（特別是 Claude、GitHub Copilot 等）提供專案結構、開發流程與協作慣例的完整說明。

---

## 📚 專案概述

**專案名稱**：AI 輔助軟體開發 (aia-swd)
**專案性質**：教學導向的 AI 輔助軟體開發知識庫與實務指南
**主要語言**：繁體中文（台灣慣用語）
**技術棧**：多語言（JavaScript、Python、SQL、ASP）、Markdown 驅動開發
**AI 工具**：GitHub Copilot、Claude、GPT-4 系列、DeepSeek

### 核心目標

1. 提供完整的 AI 輔助軟體開發教學資源（從基礎到進階）
2. 建立可重用的流程資產庫（PAL - Process Assets Library）
3. 實踐 Markdown 驅動的軟體開發生命週期
4. 對比多種 AI 模型的實際應用效果
5. 培養團隊的 AI Coding 能力與最佳實踐

---

## 📁 專案結構

```
/home/user/aia-swd/
│
├── 📖 核心教學文檔 (C0-C8)
│   ├── C0.md          # GenAI 基礎與 Alignment
│   ├── C1.md          # 編寫過程 - 即時補全與建議
│   ├── C2.md          # IDE Chat - 互動式對話
│   ├── C3.md          # 新專案開發流程
│   ├── C4.md          # 舊專案維護流程
│   ├── C5.md          # 幫手養成 - 自訂指示
│   ├── C6.md          # Copilot 強化術 - Extensions/MCPs
│   ├── C7.md          # Q&A 回應與案例
│   └── C8.md          # 現況與發展趨勢
│
├── 🔧 配置與設定
│   ├── .github/
│   │   ├── copilot-instructions.md    # Copilot 系統提示（繁體中文、Python 規範）
│   │   ├── chatmodes/
│   │   │   └── Hyweb.chatmode.md      # 自訂 Chat 模式（規劃模式）
│   │   └── prompts/
│   │       └── create-prd.md          # PRD 生成規則樣板
│   ├── .vscode/
│   │   └── settings.json              # VS Code Copilot 配置
│   └── .gitignore                     # Git 忽略清單
│
├── 💻 實例代碼 (Ex1-Ex8)
│   ├── Ex1/           # JavaScript 示例（自動完成、註解驅動、身份證驗證）
│   ├── Ex2/           # 資料庫 Schema 與後端代碼（SQL、ASP）
│   ├── Ex3/           # 新專案開發流程實例（多模型對比）
│   ├── Ex4/           # 舊專案維護流程實例
│   ├── Ex7/           # 專案管理與測試規劃
│   └── Ex8/           # 品質管理體系文件
│
├── 📋 任務與規劃
│   ├── tasks/         # 任務清單與 PRD 存放目錄
│   ├── plan.md        # 課程大綱計劃
│   └── Vibe_TaskMaster.md  # Vibe Coding 與 Claude Task Master
│
├── 📝 主要文檔
│   ├── README.md                   # 專案主入口
│   ├── QA.md                       # 測試工具與知識匯總
│   ├── voiceRec.md                 # Copilot 語音輸入支援說明
│   ├── PMP.md                      # 專案管理知識
│   ├── PPgen_Claude_process.md     # 流程資產庫生成過程
│   ├── PMCgen_Claude_process.md    # PM 計畫生成過程
│   ├── GPT-4o-vs-4.1.md            # 模型對比分析
│   └── agent.log                   # 操作記錄與日誌
│
└── CLAUDE.md          # 本文件（AI 助手協作指南）
```

---

## 🎯 AI 助手核心慣例

### 1. 語言與溝通規範

**必須遵守的規則**：

✅ **一律使用繁體中文**與台灣慣用語回答問題與生成文件
✅ 所有文件、註解、變數命名說明都應使用繁體中文
✅ 技術術語可保留英文，但需提供中文說明
✅ 避免使用簡體中文或大陸用語

### 2. 文件操作與記錄

**重要**：任何時候只要有寫檔案（包括生成、修改、更新等），都要把動作摘要記錄在 `agent.log` 檔案中，包括：

- 日期與時間
- 修改的檔案名稱與路徑
- 修改的內容摘要

**記錄格式範例**：
```
2025-11-17  C8.md 內容補充與優化
            明確記錄團隊優勢、PAL 流程資產庫、GAI-enable 實驗方向

2025-11-17  SendMailLog.sql schema 調整
            status 欄位改為 int 並明確標註狀態值，優化欄位說明
```

### 3. 程式碼規範

#### Python 程式碼規範（遵循 PEP 8）

- 使用 **4 個空格**作為縮排
- 每行程式碼不超過 **79 個字元**
- 函數與類別之間空兩行，方法之間空一行
- 使用小寫字母和底線命名函數與變數：`my_function`
- 類別名稱使用駝峰式命名：`MyClass`
- 使用 f-string 格式化字串（Python 3.6+）
- 使用虛擬環境（`.venv/`）管理依賴
- 提供清晰的 docstring 和註解
- 使用 `try-except` 處理例外

#### JavaScript/其他語言

- 參考專案現有代碼風格
- 保持一致的縮排與命名規範
- 提供清晰的註解說明

### 4. Git 工作流程

#### 分支命名規範

- 開發分支：`claude/[feature-name]-[session-id]`
- 範例：`claude/create-claude-md-01G7Y7y6BV8Q2pthhQQhLbHR`

#### 提交訊息規範

使用清晰的中文提交訊息，說明變更的目的與內容：

```bash
git commit -m "新增 CLAUDE.md 檔案，說明專案結構與 AI 協作慣例"
```

#### 推送規範

```bash
git push -u origin claude/[branch-name]
```

---

## 🚀 開發流程

### 新專案開發流程（參考 C3.md）

```
1. 需求分析 → PRD 生成
   ├─ 使用 .github/prompts/create-prd.md 模板
   ├─ 產生檔案：/tasks/prd-[feature-name].md
   └─ 包含：簡介、目標、使用者故事、功能需求等 9 個章節

2. 任務拆解 → 產生任務清單
   ├─ 使用 .mdc 提示文件
   └─ 產生檔案：/tasks/tasks-[feature-name].md

3. 架構設計 → 技術選型

4. 實作開發 → 測試案例

5. 文件生成 → 部署上線
```

### 舊專案維護流程（參考 C4.md）

```
1. 全案理解
   ├─ 語意檢索與專案結構分析
   └─ 閱讀現有文件與代碼

2. 異動影響分析
   ├─ 分析需修改的模組、功能、邏輯
   └─ 評估風險與相依性

3. 修改實作 → 測試驗證

4. 除錯與重構 → 文件更新
```

### Vibe Coding 實踐

參考 `Vibe_TaskMaster.md`，強調：

- 保持心流（Flow）的開發體驗
- 使用 Claude Task Master 或類似工具管理任務
- 迭代式開發與持續反饋

---

## 🛠️ Copilot 配置與工具

### VS Code 設定（.vscode/settings.json）

```json
{
  "chat.promptFiles": true,                           // 啟用 prompt 檔案
  "github.copilot.chat.followUps": "always",          // 總是提供後續問題
  "github.copilot.nextEditSuggestions.enabled": true, // 啟用下一步編輯建議
  "github.copilot.advanced.prompt.language": "zh-Hant" // 繁體中文
}
```

### Copilot Chat 模式

#### Ask Mode（提問模式）
- 使用 `@workspace`、`@file` 等上下文錨點
- 語意檢索與專案理解

#### Edit Mode（編輯模式）
- 直接修改程式碼
- 重構與優化

#### Agent Mode（代理模式）
- 自動化任務執行
- 多步驟流程處理

#### Custom Chat Modes（自訂模式）
- **Hyweb 規劃模式**（.github/chatmodes/Hyweb.chatmode.md）
  - 工具：codebase, fetch, findTestFiles, githubRepo, search, usages
  - 用途：生成實作計劃

### Prompt 模板系統

位置：`.github/prompts/`

- **create-prd.md**：PRD 生成規則
  - 三階段流程：接收提示 → 釐清問題 → 生成 PRD
  - 9 個標準章節結構
  - 針對初級開發人員設計

### Extensions & MCPs（參考 C6.md）

- **Extensions**：Ask mode 的 `@extensions`
- **Tools**：內部與外部工具整合
- **MCP (Model Context Protocol)**：開放標準，擴展 Copilot 能力

---

## 📊 專案管理與品質保證

### 測試策略（參考 Ex7/）

- **系統測試**：功能、非功能、性能、相容性
- **整合測試**：前後端、資料庫、API 整合
- **PRD 可測試性檢查**：確保需求明確且可驗證

### 專案規劃範本（Ex7/）

- **Project_Plan.md**：16 週詳細規劃、團隊組成、資源估算
- **Project_Monitoring_Control.md**：30+ KPI 指標、三級預警機制

### 品質管理體系（Ex8/）

- 參考 ISO 品質管理系統文件列表
- PAL (Process Assets Library) 流程資產庫

---

## 🎓 教學內容架構（C0-C8）

| 章節 | 主題 | 關鍵內容 |
|------|------|----------|
| **C0** | GenAI 基礎 | Context Window、RAG、Tools→Agents→MCPs |
| **C1** | 即時補全 | Ghost text、註解驅動、Inline Chat |
| **C2** | IDE Chat | Ask/Edit/Agent 模式、多模態、語音輸入 |
| **C3** | 新專案開發 | PRD→任務清單→實作→測試、AI-SDLC |
| **C4** | 舊專案維護 | 全案理解、語意檢索、異動影響分析 |
| **C5** | 幫手養成 | 自訂指示、提示樣板、Custom chat modes |
| **C6** | Copilot 強化 | Extensions、Tools、MCP |
| **C7** | 案例實戰 | 測試計劃、PM 管理、架構設計 |
| **C8** | 趨勢展望 | AI Coding 常見問題、關鍵要素、團隊優勢 |

---

## 🔬 多模型對比實驗

專案內包含多種 AI 模型的對比實驗（Ex3/）：

- **Claude 4**：tasks-Claude-4/
- **GPT-4.1**：tasks-GPT-4.1/
- **DeepSeek**：tasks-Clint-deepSeek/

對比文件：`GPT-4o-vs-4.1.md`

---

## 🎯 AI 助手工作原則

### 1. 以人為本

AI 是工具，開發者仍是核心。需保持對程式碼的理解與控制。

### 2. 結構化思維

將專案拆解為明確的任務與模組，讓 AI 能更好地協助。

### 3. 持續學習與調整

不斷優化 AI 的使用方式與工作流程，提升效率與品質。

### 4. 強調測試與驗證

AI 生成的程式碼需經過嚴格測試，確保品質與安全。

### 5. 知識沉澱與分享

將經驗、最佳實踐與教訓整理成知識庫，便於學習與應用。

### 6. 迭代式開發

分階段實作與測試，持續收集反饋並優化。參考 SDLC 的核心概念。

---

## 📝 常見任務指引

### 生成 PRD

1. 使用 `.github/prompts/create-prd.md` 模板
2. 提出釐清問題以收集需求細節
3. 生成完整 PRD 並儲存至 `/tasks/prd-[feature-name].md`
4. 記錄操作至 `agent.log`

### 新增教學範例

1. 確定範例類型（Ex1-Ex8）
2. 建立對應的檔案與說明文件
3. 更新相關的 C 系列教學文檔
4. 記錄至 `agent.log`

### 修改程式碼

1. 遵循對應語言的程式碼規範
2. 提供清晰的註解（繁體中文）
3. 執行測試確保品質
4. 記錄變更至 `agent.log`

### 更新文件

1. 使用繁體中文撰寫
2. 保持格式一致性（Markdown）
3. 更新目錄與連結
4. 記錄至 `agent.log`

---

## 🚨 注意事項

### 必須遵守

- ✅ 所有文件與回應使用繁體中文
- ✅ 任何檔案變更都要記錄至 `agent.log`
- ✅ 遵循 Git 分支命名規範（`claude/` 開頭）
- ✅ 生成的程式碼需符合規範（Python PEP 8 等）
- ✅ PRD 與任務清單儲存至 `/tasks/` 目錄

### 建議遵循

- 📌 參考現有範例與文件格式
- 📌 使用 Copilot 提示模板提升精準度
- 📌 進行多模型對比實驗時記錄差異
- 📌 保持程式碼與文件的同步更新

### 避免事項

- ❌ 使用簡體中文或大陸用語
- ❌ 省略 `agent.log` 記錄
- ❌ 直接推送至 main 分支
- ❌ 生成未經測試的程式碼
- ❌ 硬編碼敏感資訊

---

## 🔗 參考資源

### 官方文檔

- [GitHub Copilot 官方文檔](https://docs.github.com/en/copilot)
- [Mastering GitHub Copilot](https://github.com/microsoft/Mastering-GitHub-Copilot-for-Paired-Programming)

### 開源專案

- [AI Dev Tasks](https://github.com/snarktank/ai-dev-tasks)
- [AI-SDLC CLI](https://github.com/joinvai/ai-sdlc)
- [PlantUML in Action](https://github.com/yasenstar/PlantUML_in_Action)

### 學習資源

- [GitHub Copilot 教學專案](https://yulin0629.github.io/github-copilot-tutorial/)
- [使用 GitHub Copilot 加速應用程式開發](https://learn.microsoft.com/zh-tw/plans/e28efnd5e5m1rj)

---

## 📞 聯絡與協作

本專案歡迎團隊成員共同參與與貢獻：

- 後續會開設 `hyaia-swd` Repo 作為 hub（非 public）
- 有興趣的同仁請用公司 email 提供 GitHub 帳號以加入協作

---

## 版本資訊

- **文件版本**：1.0
- **建立日期**：2025-11-17
- **最後更新**：2025-11-17
- **維護者**：AI 助手 (Claude) + 專案團隊

---

## 附錄：常用指令速查

### Git 操作

```bash
# 建立新分支
git checkout -b claude/[feature-name]-[session-id]

# 提交變更
git add .
git commit -m "變更說明"

# 推送至遠端
git push -u origin claude/[branch-name]
```

### VS Code Copilot

```
# Chat 指令
/explain    # 解釋程式碼
/fix        # 修正錯誤
/tests      # 生成測試
/doc        # 生成文件

# 上下文錨點
@workspace  # 整個工作區
@file       # 特定檔案
#selection  # 選取的程式碼
#terminal   # 終端輸出
```

### Python 虛擬環境

```bash
# 建立虛擬環境
python -m venv .venv

# 啟用虛擬環境（Linux/Mac）
source .venv/bin/activate

# 啟用虛擬環境（Windows）
.venv\Scripts\activate

# 安裝依賴
pip install -r requirements.txt
```

---

**本文件旨在協助 AI 助手更好地理解專案結構與協作規範，提升協作效率與產出品質。**
