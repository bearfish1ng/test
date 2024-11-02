const mysql=require("mysql")

const host="localhost";

module.exports={
    connection:mysql.createConnection({
        host:host,
        user:"root",
        password:"backend",
        database:"test",
    }),
};