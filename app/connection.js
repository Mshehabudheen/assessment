import mysql from "mysql";

const connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    database:'categories'
});

export default connection;
