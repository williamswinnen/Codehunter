const express = require('express');
const path = require('path');
const app = express();

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '.app/views/pages/home.html.erb'));
})



const server = app.listen(6000);
