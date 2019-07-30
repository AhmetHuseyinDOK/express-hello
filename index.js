const express = require('express')
const app = express()
const port = process.env.PORT || 3000
// import axios from 'axios';
app.get('/', /** async */  (req, res) => {
    // let {data} = await axios.get("http://169.254.169.254/latest/meta-data/public-hostname")
    res.send("hello world");
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))