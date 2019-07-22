const express = require('express')
const app = express()
const port = process.env.PORT || 3000
import axios from 'axios';
app.get('/', async (req, res) => {
    let {data} = await axios.get("http://www.mocky.io/v2/5185415ba171ea3a00704eed")
    res.send(data);
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))