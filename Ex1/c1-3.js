// 判斷是否為有效的台灣身份證號碼
function isValidTaiwanID(id) {
    // 正規表達式檢查格式
    const regex = /^[A-Z][12]\d{8}$/;
    
    // 檢查格式是否符合
    if (!regex.test(id)) {
        return false;
    }

    // 轉換第一個字母為數字
    const letterCode = {
        A:10,B:11,C:12,D:13,E:14,F:15,G:16,H:17,I:34,J:18,K:19,L:20,M:21,N:22,O:35,P:23,Q:24,R:25,S:26,T:27,U:28,V:29,W:32,X:30,Y:31,Z:33
    };
    
    const firstChar = id[0];
    const firstNum = letterCode[firstChar];
    
    // 拆分數字並計算驗證碼
    let sum = Math.floor(firstNum / 10) + (firstNum % 10) * 9; // 第一位數字的計算
    for (let i = 1; i < id.length - 1; i++) {
        sum += parseInt(id[i]) * (9 - i);
    }
    
    // 最後一位驗證碼
    const checkDigit = parseInt(id[9]);
    
    // 驗證碼計算
    return (sum + checkDigit) % 10 === 0;
}


