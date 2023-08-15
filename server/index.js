//Import from packages
const express = require('express')
const mongoose = require('mongoose')
//const cors = require('cors')

//Import from other files
const authRouter = require("./auth/auth");
const adminRouter = require("./admin/admin")

//Init
const PORT = 3000;
const DB = "mongodb+srv://pradeep:akjjyglc@cluster0.obaovyi.mongodb.net/?retryWrites=true&w=majority";
const app = express();

//middlewar
app.use(express.json());
// app.use(cors());
app.use(authRouter);
app.use(express.urlencoded({extended: false,limit: 1024*1000,}))
app.use(adminRouter);



//Connecttions
mongoose.connect(DB).then(() => {
    console.log("connection successful");
}).catch(e => {
    console.log(e);
});


app.listen(PORT,"0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
});