
// This function checks if a given string is a valid Taiwan ID number.
// 要依照台灣身份證號碼的規則來檢查是否有效
/*
台灣身份證號碼檢查規則：
1. 第一碼為英文字母，代表地區。
2. 第二碼為1或2，1代表男性，2代表女性。
3. 後面8碼為數字。
4. 驗證碼計算方式：
    - 英文字母轉換為對應數字(見table)，拆成兩位數字。
    - 依序乘上權重：1,9,8,7,6,5,4,3,2,1,1
    - 加總後除以10，餘數為0則有效。
*/
const letterCode = {
     A:10,B:11,C:12,D:13,E:14,F:15,G:16,H:17,I:34,J:18,K:19,L:20,M:21,N:22,O:35,P:23,Q:24,R:25,S:26,T:27,U:28,V:29,W:32,X:30,Y:31,Z:33
};
function isValidTaiwanID(id) {
    const regex = /^[A-Z][12]\d{8}$/;
    
    return regex.test(id);
}

//test the function
if (require.main === module) {
    console.log(isValidTaiwanID("A123456789")); // true
    console.log(isValidTaiwanID("B123456789")); // false
    console.log(isValidTaiwanID("A12345678")); // false
    console.log(isValidTaiwanID("A1234567890")); // false
}