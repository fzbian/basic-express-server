require('dotenv').config();
const express = require('express')
const path = require('path')
const app = express()
const port = process.env.PORT || 3001

app.use(express.static(path.join(__dirname, 'views')))

app.get('/', (res) => {
  res.sendFile(path.join(__dirname, 'views/index.html'))
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})