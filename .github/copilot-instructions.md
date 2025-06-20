# Copilot 工作時的系統提示
# 這是 Copilot 的系統提示，請勿修改
盡量使用繁體中文與台灣的慣用語回答問題與生成文件。

<!--
任何時候只要有寫檔案，包括生成、修改、更新等，都要把動作摘要紀錄在 \agent.log 檔案中，
包括日期與時間，動到的檔案名稱路徑，以及修改的內容摘要。
-->


# Python 常用的習慣規定

以下是撰寫 Python 程式時常見的習慣規定，遵循這些規範可以讓程式碼更具可讀性和一致性。

## 1. 遵循 PEP 8 規範
- 使用 4 個空格作為縮排。
- 每行程式碼不超過 79 個字元。
- 函數與類別之間空兩行，方法之間空一行。
- 使用小寫字母和底線命名函數與變數，例如：`my_function`。
- 類別名稱使用駝峰式命名，例如：`MyClass`。

## 2. 使用清晰的變數名稱
- 避免使用單一字母作為變數名稱，除非在迴圈中如 `i` 或 `j`。
- 使用描述性的名稱，例如：`total_price` 而非 `tp`。

## 3. 匯入模組
- 將所有匯入放在檔案的最上方。
- 按以下順序排列匯入：
    1. 標準庫模組
    2. 第三方模組
    3. 自訂模組
- 每組匯入之間空一行。

```python
import os
import sys

import numpy as np

from my_project import my_module
```

## 4. 使用註解
- 使用單行註解解釋程式碼的目的。
- 使用多行註解或 docstring 描述函數、類別或模組的用途。

```python
# 單行註解範例
x = 10  # 設定初始值

def add(a, b):
        """
        傳回兩數相加的結果。
        :param a: 第一個數字
        :param b: 第二個數字
        :return: 相加結果
        """
        return a + b
```

## 5. 避免硬編碼
- 使用常數或設定檔來儲存固定值。
```python
MAX_RETRIES = 5
TIMEOUT = 30
```

## 6. 使用虛擬環境
- 建議使用虛擬環境（如 `venv` 或 `conda`）來管理專案的依賴。

## 7. 錯誤處理
- 使用 `try-except` 區塊來處理可能的例外。
```python
try:
        result = 10 / 0
except ZeroDivisionError:
        print("不能除以零！")
```

## 8. 格式化字串
- 使用 f-string（Python 3.6+）來格式化字串。
```python
name = "Alice"
print(f"Hello, {name}!")
```

## 9. 使用列表生成式
- 使用列表生成式來簡化列表操作。
```python
squares = [x**2 for x in range(10)]
```

## 10. 測試與文件
- 為程式碼撰寫單元測試。
- 提供清晰的文件以便他人理解程式碼。
