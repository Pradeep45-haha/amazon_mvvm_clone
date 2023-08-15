const jwt = require("jsonwebtoken");
const User = require("../models/users");

const admin = async (req, res, next) => {
    try {
        console.log("from admin 1");console.log(`token value${req.header("loginToken")} `)

        const token = req.header("loginToken")
        
        if (!token) {
            return res.status(401).json({ msg: "NO_AUTH_TOKEN" });
        }

        const isVerified = jwt.verify(token, "passwordKey");
        if (!isVerified) {
            return res.status(401).json({ msg: "INVALID_TOKEN." });
        }
        const user = await User.findById(isVerified.id);
        if (user.type == "user") {
            return res.status(401).json({ msg: "USER_IS_NOT_ADMIN" });
        }

        req.user = isVerified.id;
        req.token = token;
        next();
    } catch (e) {
        console.log(e.message);
        res.status(500).json({ error: e.message });

    }
}


module.exports = admin;
