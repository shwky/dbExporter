require('dotenv').config();
const express = require('express');
const app = express();
const mysqldump = require('mysqldump');
const AWS = require('aws-sdk');
const fs = require('fs');
const PORT = process.env.PORT

//start my server on the port specified
app.listen(PORT, () => {
    console.log('Server Started ....');
});

let today = new Date().toISOString().slice(0, 10);
const fileName = `bk-${today}.sql`;

//dump the result to a file
mysqldump({
    connection: {
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB_NAME,
    },
    dumpToFile: fileName,
}).then( data => {
    //console.log(data);
});

const s3 = new AWS.S3({
    accessKeyId: process.env.ACCESS_KEY_ID,
    secretAccessKey: process.env.SECRET_ACCESS_KEY
});

const uploadFile = () => {
    fs.readFile('./' + fileName, (err, data) => {
        if (err) throw err;
        const params = {
            Bucket: 'storkyappstatic', 
            Key: 'dbbackups/'+fileName, 
            Body: JSON.stringify(data, null, 2)
        };
        s3.upload(params, function (s3Err, data) {
            if (s3Err) throw s3Err
            console.log(`File uploaded successfully at ${data.Location}`)
        });
    });
};

uploadFile();

