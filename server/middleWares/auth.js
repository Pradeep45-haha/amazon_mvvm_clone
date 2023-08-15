const jwt = require('jsonwebtoken')
const otpGen = require("otp-generator")


const auth = async (req, res, next) => {
    try {
        console.log(11);
        const token = req.header("loginToken");
        console.log(12);
        if (!token) {
            return res.status(401).json({ msg: "No auth token, access denied" });
        }
        const isVerified = jwt.verify(token, "passwordKey");
        if (!isVerified) {
            return res.status(401).json({ msg: "Token verification failed, authorisation denied." });
        }

        req.user = isVerified.id;
        req.token = token;
        next();
    } catch (e) {
        console.log(e.message);
        res.status(500).json({ error: e.message });
    }
}




module.exports = auth;