import express from "express";
import connection from "./connection.js";
import categories from "./routers/categories.js";
const app = express();

app.use(express.static("public"));
app.use(express.json());
app.use(categories);

connection.connect((err) => {
  if (err) {
    throw "connection was not stablished with the database";
  }
  app.listen(2000, () => {
    console.log("app is listening on port 2000");
  });
});
