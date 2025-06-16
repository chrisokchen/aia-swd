# C2: IDE 裡的 Chat - 互動式對話

## 1. 三種 Chat 模式: Ask, Edit, Agent
* **Ask Mode**：用於提問和獲取建議，類似於傳統的聊天界面。
* **Edit Mode**：用於編輯和修改程式碼，Copilot 會根據上下文提供建議。
* **Agent Mode**：用於執行特定任務，Copilot 可以充當一個智能助手，幫助完成複雜的工作流程。

以下是 GitHub Copilot 中 **Ask、Edit、Agent 三種 Chat 模式** 的功能與差異整理：

---

## 🗣️ Ask 模式

* **定位**：快速提問助手，不會修改任何程式碼
* **用途**：

  * 解析現有程式碼（功能、錯誤、邊緣情況）
  * 生成小段示範程式碼或建議
* **特點**：低干涉、速度快、不涉及專案的其他檔案 ([github.blog][1], [linkedin.com][2])

---

## ✏️ Edit 模式

* **定位**：局部修改工具，由你選擇檔案與範圍
* **用途**：

  * 小範圍重構（如改成 async/await、加錯誤處理）
  * 全案一致調整（風格、注釋語言等）
* **特點**：

  * 編輯前會顯示 diff，讓你逐步 review
  * 可設定格式規範與團隊風格
  * 適合漸進式優化或維護型改動&#x20;

---

## 🤖 Agent 模式

* **定位**：自動化多步任務執行的「智能同儕程式員」
* **用途**：

  * 實現整合功能（如建新 feature、測試撰寫、框架遷移）
  * 涉及跨檔案、大量修改，甚至執行終端命令（build、install、test）
* **特點**：

  * Copilot 會自動決定要改哪些檔案、執行什麼命令，並自我修正錯誤
  * 適合複雜工作流程和自動化協作
  * 你仍可審查、同意其修改與命令 ([github.blog][3])

---

### 🔍 模式比較小表

| 模式        | 修改範圍      | 是否自動執行命令            | 操作流程重點                            |
| --------- | --------- | ------------------- | --------------------------------- |
| **Ask**   | 無（僅回覆）    | 否                   | 提問 → 顯示回應 → 自行操作                  |
| **Edit**  | 指定檔案 + 範圍 | 否                   | 指令 → Copilot 建議 diff → 由你確認套用     |
| **Agent** | 自動選檔案、跨檔案 | 是（可執行 build/test 等） | 下高階任務 → Copilot 擬定計劃並逐步執行 → 你審核每步 |

---

### 📌 選擇建議

* **遇到小問題卡住？** → 用 **Ask** 模式快速解答
* **要進行局部重構或調整？** → 選 **Edit** 模式更精確控制
* **要交代一個完整任務？** → 用 **Agent** 模式讓 Copilot 自動幫你做多步處理

---

👉 三種模式各有分工，讓你能根據任務需求選擇合適工具／介入層級。如果你想了解操作教學或需要建議哪些情境下切換使用，也可以隨時告訴我！

[1]: https://github.blog/ai-and-ml/github-copilot/copilot-ask-edit-and-agent-modes-what-they-do-and-when-to-use-them/?utm_source=chatgpt.com "Copilot ask, edit, and agent modes: What they do and when to use ..."
[2]: https://www.linkedin.com/posts/michellesandford_sn0404-agent-darkmp4-activity-7326045229579407360-gokW?utm_source=chatgpt.com "GitHub Copilot: Ask, Edit, Agent modes explained - LinkedIn"
[3]: https://github.blog/ai-and-ml/github-copilot/agent-mode-101-all-about-github-copilots-powerful-mode/?utm_source=chatgpt.com "Agent mode 101: All about GitHub Copilot's powerful mode"

--- 

GitHub Copilot 有三種 Chat 模式：「Ask」、「Edit」、「Agent」，它們的用途和體驗各有不同，主要差異如下：

---

### 1. **Ask 模式**
- **用途**：問答、解釋、查詢、協助理解程式碼。
- **互動方式**：你可以直接問 Copilot 任何有關程式碼、語法、錯誤訊息、開發最佳實踐等問題，Copilot 會以對話方式回覆。
- **常見用例**：
  - 這段程式碼在做什麼？
  - 如何寫一個排序函數？
  - 什麼是 Python 的 f-string？

---

### 2. **Edit 模式**
- **用途**：直接修改、優化、重構、補充、修正你選取的程式碼片段。
- **互動方式**：你選取程式碼後，描述你想要做的更動（例如「將這段程式碼改成 async」、「增加註解」、「優化效能」），Copilot 會直接產生修改建議，且可以預覽、套用更動。
- **常見用例**：
  - 把這段改成支援多執行緒。
  - 幫這段加上型別註解。
  - 修正這段程式碼的 bug。

---

### 3. **Agent 模式**
- **用途**：自動化複雜任務，讓 Copilot 依照你的指示持續進行多步驟操作，例如跨檔案重構、批次套用規則、執行測試後修正錯誤等。
- **互動方式**：你給 Copilot 一個較高層次的目標，它會自動規劃步驟、逐步執行、詢問確認、甚至自動修改多個檔案。
- **常見用例**：
  - 幫我把這個專案的所有 print 改成 logging。
  - 幫我加上單元測試並修正測試失敗的地方。
  - 重構整個資料夾下的函數名稱。

---

## 小結

- **Ask**：單純問答，快速獲得知識或說明。
- **Edit**：編輯選取的程式碼，產生直接可用的修改建議。
- **Agent**：自動化多步驟、複雜的開發任務，適合大規模或跨檔案的需求。

這三種模式讓 Copilot 能更靈活地協助你從單純查詢、程式碼優化到多步驟自動化，大幅提升開發效率。
