const express = require('express');
const app = express();

app.get('/',(req,res)=>{
    res.send("Hello Folks, Its Sayak Bhattacharya this side! Build number 221");
})

app.listen(8000, ()=>{
    console.log(`Server Listening on PORT 8000`);
})
