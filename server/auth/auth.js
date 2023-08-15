const express = require('express');
const User = require("../models/users");
const bcryptjs = require("bcryptjs")
const jwt = require("jsonwebtoken")
const authRouter = express.Router();
const auth = require('../middleWares/auth');
const otpGen = require("otp-generator");
const crypto = require("crypto");
const randomString = require("randomstring");



let gsecretKey;


//sign up route
authRouter.post("/api/signup", async (req, res) => {
    try {
        //console.log(req);
        console.log("1");
        const { name, email, password } = req.body;
        console.log(req.body);
        // console.log(`${name}, ${email}, ${password}`)
        const existingUser = await User.findOne({ email })
        console.log("2");
        if (existingUser) {
            return res.status(
                409
            ).json({ msg: "EMAIL_IN_USE" });
        }
        console.log("3");
        console.log(password);
        const passwordHash = await bcryptjs.hash(password, 8);
        console.log("4");
        let user = new User({
            email: email,
            password: passwordHash,
            name: name,
        });
        console.log("5");
        user = await user.save();
        console.log("6");
        res.json({ user });
        console.log("7");;
    } catch (error) {

        res.status(500).json({ error: error.message })
    }
});

//sign in route
authRouter.post("/api/signin", async (req, res) => {
    try {
        console.log("1");
        const { email, password } = req.body;
        console.log(req.body);
        console.log("2");
        const user = await User.findOne({ email })
        console.log("3");
        if (!user) {
            return res.status(400).json({ msg: "EMAIL_DOES_NOT_EXISTS" });
        }
        console.log("4");
        const isMatch = await bcryptjs.compare(password, user.password); console.log("1");

        if (!isMatch) {
            return res.status(400).json({ msg: "INCORRECT_PASSWORD" });
        }
        console.log("5");
        const token = jwt.sign({ id: user._id }, "passwordKey");
        console.log("6");
        console.log(user);
        res.json({ token, ...user._doc });
        console.log("7");
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

//authorise user route
authRouter.post("/api/authoriseUser", async (req, res) => {
    try {
        console.log("authoriseUser on server");
        const loginToken = req.header("loginToken");
        console.log(loginToken);
        console.log(1);
        if (!loginToken) {
            console.log(2);
            return res.json(false);
        }
        console.log(3);
        const isVerified = jwt.verify(loginToken, "passwordKey");
        console.log(4);
        if (!isVerified) {
            console.log(5);
            return res.json(false);
        }
        console.log(6);
        const user = await User.findById(isVerified.id);
        console.log(7);
        if (!user) {
            console.log(8);
            return res.json(false);
        }
        console.log("authoriseUser on server 7");
        console.log(true);
        return res.json(true);
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
});
authRouter.post("/api/authoriseAdmin", async (req, res) => {
    try {
        console.log("authoriseAdmin on server");
        console.log(`token value ${req.header("loginToken")} `)
        const loginToken = req.header("loginToken");
        console.log(loginToken);
        console.log("from admin 1");
        if (!loginToken) {
            console.log(2);
            return res.json(false);
        }
        console.log(3);
        const isVerified = jwt.verify(loginToken, "passwordKey");
        console.log(4);
        if (!isVerified) {
            console.log(5);
            return res.json(false);
        }
        console.log(6);
        const user = await User.findById(isVerified.id);
        console.log(7);
        if (!user) {
            console.log(8);
            return res.json(false);
        }
        if (user.type == "user") {
            return res.status(401).json({ msg: "USER_IS_NOT_ADMIN" });
        }
        console.log("authoriseAdmin on server 7");
        if (user.type == "admin") {
            console.log("authoriseAdmin on server 8");
            req.user = isVerified.id;
            req.token = loginToken;
            console.log(true);
            return res.json(true);
        }

    } catch (e) {
        console.log(`error from server ${e}`);
        res.status(500).json({ error: e.message });
    }
});

//get user data
authRouter.get('/', auth, async (req, res) => {
    console.log("in the root for ...");
    const user = await User.findById(req.user);
    res.json({ ...user._doc, token: req.token });
})

//sign with phone number route
authRouter.post("/api/signin/phoneNumber", async (req, res) => {

});




const generateOtp = (lenght) => {
    const otp = otpGen.generate(lenght, {
        lowerCaseAlphabets: false,
        upperCaseAlphabets: false,
        specialChars: false
    });
    return otp;
}

const getTimeLimit = (timeLimitInMs) => {
    const extraTime = timeLimitInMs;
    const expires = Date.now() + extraTime;
    return expires;
}

const getSecretKey = (lenght) => {
    let secretKey = randomString.generate({
        lenght: 6,
        charset: "alphabetic"
    });
    gsecretKey = secretKey;
    return secretKey;
}

const getHashValue = (value, key, expires) => {
    const hashValue = crypto.createHmac("sha256", key).update(value).digest("hex");
    const fullHashValue = `${hashValue}.${expires}`;
    return fullHashValue;
}

const getTotp = (phoneNumber, callback) => {
    const otp = generateOtp(6);
    const timeLimit = getTimeLimit((1000 * 5 * 60));
    const key = getSecretKey(6);
    const data = `${phoneNumber}.${otp}.${timeLimit}`;
    const fullHashValue = getHashValue(data, key, timeLimit);
    return callback(null, fullHashValue);
}

const sendOpt = async (phoneNumber,) => {
    const accountSid = "ACf92bdf309bdaf1f4856837f22513f794";
    const authToken = "e6a99ee570029460024d6b6f00736eb2";
    const client = require("twilio")(accountSid, authToken);
    client.messages
        .create({ body: "Hello from Twilio testing", from: "+14066164092", to: `+${phoneNumber}` })
        .then(message => console.log(message.sid));
}

const verifyTotp = async (value, phoneNumber, otp, callback) => {
    let [hashValue, expires] = value.split(".");

    let nowTime = DateTime.now();
    if (nowTime > expires) {
        return callback("OTP expires");
    }

    let data = `${phoneNumber}.${otp}.${expires}`;
    let newHashValue = getHashValue(data, gsecretKey, expires);
    if (newHashValue === hashValue) {
        return callback(null, "OTP verification succeeded");
    }

    return callback("Invalid OTP", "OTP varification failed");
}

module.exports = authRouter;