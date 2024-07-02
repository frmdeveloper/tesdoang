const express = require('express')
const app = express()

app.all('*', function (req, res) {
  res.send('Hello World')
})

app.listen(process.env.PORT || 3000)
