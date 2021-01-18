require('dotenv').config();

const express = require('express');
const app = express();
const PORT = process.env.PORT

//start my server on the port specified
app.listen(PORT, () => {
    console.log('Server Started ....');
});


const mysql = require('mysql');

//connect to  db
let connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
})

const mysqldump = require('mysqldump');

//dump the result to a file
mysqldump({
    connection: {
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB_NAME,
    },
    dumpToFile: './dbfile2.sql',
});