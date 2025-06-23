# AI 輔助軟體開發

* 課前調查:
  - [最習慣用哪種 IDE?](https://app.sli.do/event/gSBDUPTcSFmjjwpNsWEJfN)  ==> [結果統計](https://wall.sli.do/event/gSBDUPTcSFmjjwpNsWEJfN?section=427eca0c-807a-4920-9a8b-049390d71538)
  - [對這堂課最期望能知道什麼?](https://app.sli.do/event/2vi8reg8mayKLt5G93pKGK)  ==> [結果統計](https://wall.sli.do/event/2vi8reg8mayKLt5G93pKGK?section=51d6e4b6-54cb-47b9-8cb0-458c992eef6c)


# TOC： 	

0. [GenAI - 暖身與 Alignment](C0.md)
1. [編寫過程- 即時補全與建議， 選取程式碼區塊的操作 (解釋/除錯/修正/審查/測試/產文件)](C1.md)
2. [IDE 裡的 Chat - 互動式對話](C2.md)
3. [新專案開發流程- 需求/限制條件，架構/框架，程式/測試案例，文件生成](C3.md)
4. [舊專案維護流程- 全案理解/語意檢索，修改/測試，除錯/重構，文件更新](C4.md)
5. [幫手養成- 自訂指示，提示樣板，私人調教](C5.md)
6. [Copilot 強化術- Extensions、Tools 與 MCPs 全攻略](C6.md)
<br/>~~7. [專案管理- 團隊協作，CM/PR/CodeReview，專案知識庫](C7.md)~~<br/>
7. ["對這堂課最期望能知道什麼?" 的回應](C7.md)
8. [Q&A- 現況與發展趨勢](C8.md)



---

# GenAI/AI Coding 與軟體開發 大綱

## [C0: GenAI - 暖身與 Alignment](C0.md)
- 1. ChatGPT vs GPT-4（介面程式 vs 引擎）
- 2. 介面程式加工了什麼（Context、Prompt 結構、Context window、Tools/Agents/MCPs）
- 3. RAG（檢索增強生成）
- 4. IDE as a LLM-powered Vehicle（AI 編輯器、Copilot、AI IDEs/Extensions/Agents）

## [C1: 編寫過程 - 即時補全與建議](C1.md)
- 1. 自動完成建議（Ghost text、替代選項、建議面板）
- 2. 註解驅動的編碼（用註解引導 Copilot 產生程式碼）
- 3. 選取程式碼區塊的操作（Explain、Fix、Review、Docs、Tests）
- 4. Editor Inline Chat（即時對話、建議、分析）
- 5. Next Edit Suggestions（根據上下文持續給出建議）

## [C2: IDE 裡的 Chat - 互動式對話](C2.md)
- 1. 三種 Chat 模式：Ask、Edit、Agent (還可以自定義)
- 2. 靈活自主控制的 Chat（Context、Models、Multi-modals、Tools、Slash Commands）

## [C3: 新專案開發流程](C3.md)
- 0. [Vibe Coding 與 Claude Task Master](Vibe_TaskMaster.md)
- 1. 精簡版的 [AI Dev Tasks](https://github.com/snarktank/ai-dev-tasks)
- 2. 較完整的 SDLC [AI-SDLC CLI](https://github.com/joinvai/ai-sdlc/tree/main) - md 驅動的軟體開發生命週期

## [C4: 舊專案維護流程](C4.md)
- 1. 全案理解工具（語意檢索、專案結構、功能、邏輯）
- 2. 異動影響分析（分析需修改的模組、功能、邏輯）
- 3. 正規的專案維護做法

## [C5: 幫手養成- 自訂指示、提示樣板與個人化調整](C5.md)
- 1. 自訂指示（Custom Instructions）
- 2. 提示樣板（Prompt Templates）
- 3. 指示/提示/規則 參考來源
- 4. 實用建議
- 5. Custom chat modes

## [C6: Copilot 強化術- Extensions、Tools 與 MCPs 全攻略](C6.md)
- 1. Extensions 插件（Ask mode 的 @extensions）
- 2. Tools 工具（內部與外部）
- 3. MCP (Model Context Protocol) - 開放標準，讓 Copilot 與外部工具和服務整合
- 4. MCP 擴展 Copilot 能力（如何設置）

## [C7: "對這堂課最期望能知道什麼?" 的回應](C7.md)
- 1. 能幫我寫測試計劃、測試案例、自動測試、再生出測試報告嗎?
  - Ex7-1: 生成系統測試計劃
  - Ex7-2: 生成整合測試計劃
  - Ex7-3: 生成 PRD 可測試性檢查報告
- 2. 我是PM, AI 怎麼幫我規劃、管理專案?
  - Ex7-4: 生成專案管理計劃
  - Ex7-5: 生成專案監控與控制計劃

References:

* [GitHub: snarktank / ai-dev-tasks ](https://github.com/snarktank/ai-dev-tasks)
* [GitHub: joinvai / ai-sdlc ](https://github.com/joinvai/ai-sdlc)
* [GitHub: yasenstar / PlantUML_in_Action](https://github.com/yasenstar/PlantUML_in_Action)
* [Udemy: 7 Days of GitHub Copilot: The GitHub Copilot Masterclass](https://www.udemy.com/course/github-copilot-for-professionals)
* [Udemy: GenAI And Other Software Testing Tools Every QA Should Know](https://www.udemy.com/course/testingtools/)
* [Udemy: Complete Project Manager's Practical Guide to Using AI 8 PDU](https://www.udemy.com/course/project-management-ai/)


Resources:

* [GitHub Copilot 官方文檔](https://docs.github.com/en/copilot)
* [Mastering GitHub Copilot](https://github.com/microsoft/Mastering-GitHub-Copilot-for-Paired-Programming) MS 提供的 GitHub Copilot 教學資源
* [使用 GitHub Copilot 加速應用程式開發](https://learn.microsoft.com/zh-tw/plans/e28efnd5e5m1rj?ocid=Build25_plan_azuremktg_developer#) 也是 MS 提供的
* [GitHub Copilot 教學專案 - 透過 8 個實作場景，掌握 AI 輔助開發的完整技能](https://yulin0629.github.io/github-copilot-tutorial/)
    * [Github](https://github.com/yulin0629/github-copilot-tutorial)
* [Demo: Figma design to webpage with GitHub Copilot Agent and Figma MCP server](https://www.youtube.com/watch?v=1eZMmQ8_XkA)
* [TCSE 2025 - 第21屆台灣軟體工程研討會](https://tcse2025.seat.org.tw/)  以 「AI強化軟體工程(AI-powered Software Engineering)」為主題