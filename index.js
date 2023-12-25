import dotenv from "dotenv";
import express from "express";
const app = express();
const port = 3000;

dotenv.config();
const showENV = process.env.SHOW_TEXT;

app.get("/", (req, res) => {
  res.send(showENV);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
