import express from "express";
import connection from "../connection.js";

const router = express.Router();

router.get("/categories/:id", (req, res) => {
  let reqId = req.params.id;
  connection.query(
    `SELECT * FROM categories WHERE id =${reqId}`,
    (err, result) => {
      if (result.length === 0) {
        res.json("no category");
        return;
      }
      let [category] = result;
      console.log(result);
      // first check if it has any subcategories
      connection.query(
        `SELECT * FROM categories WHERE parent_id=${category.id}`,
        (err, result) => {
          if (result.length > 0) {
            console.log("exist", result);
            res.json(result);
          }
          // if there is no sucategories creat new 2 subs
          else {
            for (let i = 0; i < 2; i++) {
              let sql = `INSERT INTO categories (name,parent_id) VALUES ('SUB ${
                category.name.split(" ")[1].length === 1
                  ? `${category.name.split(" ")[1]}${i}`
                  : `${category.name}-${i}`
              }', ${category.id})`;
              connection.query(sql, (err, result) => {
                if (err) throw new Error("not inserted into the database");
                console.log("inserted successfully");
                console.log("create", result);
              });
            }
            connection.query(
              `SELECT * FROM categories WHERE parent_id=${category.id}`,
              (err, result) => {
                res.json(result);
              }
            );
          }
        }
      );
    }
  );
});

export default router;
