// a function that takes a string as input and returns the reverse of string
function reverseString(str) {
    return str.split("").reverse().join("");
}

// export the function
module.exports = reverseString; 

// unit 

// test the function
if (require.main === module) {
    console.log(reverseString("hello")); // "olleh"
    console.log(reverseString("world")); // "dlrow"
}
