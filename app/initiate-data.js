import connection from "./connection.js";
connection.connect(err=>{
    if(err) console.log('error',err);
});
let num = 65;
for(let i = 0 ; i < 2 ; i ++){
    connection.query(`INSERT INTO categories (name) VALUES ('category ${String.fromCharCode(num++)}')`,(err,result)=>{
        if(err) throw new Error('not inserted into the database');
        console.log('inserted successfully');
        if(i === 1){
            connection.end();
            process.exit(0);
        }
    })
}
