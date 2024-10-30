(async function main() {
    const params = { d1: "中", d2: "😊" };
    const bodyStr = JSON.stringify(params);
    console.log("request body str len:" + bodyStr.length + " due to the default utf-16 encoding"); 
    const options = {
        method: 'POST',
        body: bodyStr,
        headers: {
            "Content-type": "application/json",
            // "My-header1": "😢", // invalid header, more details see nodejs files: File: deps/undici/src/lib/fetch/headers.js:line 205
        }
    };
    async function doPost() {
        // fetch api will use utf8 as the default encoding
        // more details see nodejs files:
        // deps/undici/src/lib/fetch/request.js:line 444
        // deps/undici/src/lib/fetch/body.js:line 31
        const response = await fetch('http://127.0.0.1:8042/echoback?arg1=中&arg2=😊', options);
        const data = await response.text();
        return data;
    };

    console.log("==utf8 encoded data sent==");
    // only utf8 encoding supported
    const enc = new TextEncoder();
    const utf8EncodedBody = enc.encode(bodyStr);
    console.log("reqeust body str len:" + utf8EncodedBody.length + " after utf8 encoding, content:" + bodyStr);
    let data = await doPost();
    console.log(data); 
     
    // use the raw data without utf8 but utf16 little-endian
    options.body = Buffer.from(bodyStr, "utf16le");
    console.log("reqeust body bytes len:" + options.body.length + " after utf16le encoding");
    const byteSize = options.body.length;
    let hexStr = "";
    for (let index = 0; index < byteSize - 1; index+=2) {
        hexStr += options.body.readUInt16LE(index).toString(16).padStart(4, "0");
        hexStr += " ";
    }
    hexStr.trimEnd();
    console.log(hexStr);
    console.log("==utf16 little-endian encoded data sent==");
    data = await doPost();
    console.log(data);
})();