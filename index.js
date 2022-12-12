import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import PersonRoute from "./routes/PersonRoute.js";

dotenv.config();

//init Express
const app = express();

app.use(cors());
app.use(express.json());
app.use(PersonRoute);

app.listen(process.env.APP_PORT,() =>{
    console.log('Server is running up...')
})
