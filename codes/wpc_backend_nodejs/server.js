var express = require('express');
var cors = require('cors');
var path = require('path');
var mysql = require("mysql");
var bodyParser = require('body-parser');

const port = 3000


var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "rootroot",
    database: "wpc_db"
});

con.connect(function(err) {
    if (err) {
        console.log('connecting error');
        return;
    }
    console.log('connecting success');
});

var app = express();

app.use(cors())
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));



app.get('/', (req, res) => {
  res.send('Hello World!')
})


app.get('/blogposts/list', (req, res) => {

    con.query(' SELECT * FROM `blogposts` ', function(err, rows) {
    	if (err) {
            console.log(err);
        }
        var data = rows;
        res.send(JSON.stringify(data));
    });
})




app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

