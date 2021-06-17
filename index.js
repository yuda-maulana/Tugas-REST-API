const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql');

app.use(bodyParser.json());

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'dbmusik'
});

conn.connect((err) => {
    if(err) throw err;
    console.log('Berhasil terhubung');
});

app.get('/api/musik',(req, res) => {
    let sql = "SELECT * FROM tbmusik";
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

app.get('/api/musik/:id',(req, res) => {
    let sql = "SELECT * FROM tbmusik WHERE id="+req.params.id;
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

app.post('/api/musik',(req, res) => {
    let data = {judul: req.body.judul, penyanyi: req.body.penyanyi, album:req.body.album};
    let sql = "INSERT INTO tbmusik SET ?";
    let query = conn.query(sql, data, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

app.put('/api/musik/:id',(req, res) => {
    let sql = "UPDATE tbmusik SET judul='"+req.body.judul+"', penyanyi='"+req.body.penyanyi+"', album='"+req.body.album+"' WHERE id="+req.params.id;
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

app.delete('/api/musik/:id',(req, res) => {
    let sql = "DELETE FROM tbmusik WHERE id="+req.params.id+"";
    let query = conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
    });
});

app.listen(3000, () => {
    console.log('Server berjalan pada port 3000...');
});