const express = require("express");
const adminRouter = express.Router();
const admin = require("../middleWares/admin");
const Product = require("../models/product");
const multer = require('multer')


//middleware
const storage = multer.memoryStorage();
const upload = multer({ storage: storage });

//consts
const maxCount = 10;


//add product
adminRouter.post("/admin/add/product", admin, upload.array("image", [maxCount]), async (req, res) => {
    try {
        console.log("from admin add product 1");

        const productData = JSON.parse(req.body.product);
        console.log(typeof (productData));
        const { name, description, imageUrls, quantity, price, category, currency, reviews, rating } = productData;

        let product = new Product({
            name,
            category,
            description,
            price,
            quantity,
            reviews,
            rating,
            imageUrls,
            currency,

        });
        console.log("done")
        product = await product.save();
        res.status(200).json({ product });
    } catch (e) {
        console.log(e.message);
        res.status(500).json({ error: e.message });

    }
});

adminRouter.get("/admin/get/product", admin, async (req, res) => {
    console.log("product get api executing");
    try {

        let id = req.header.id;
        let category = req.header.category;
        let price = req.header.price;
        let name = req.header.productName;
        console.log(id);
        console.log(price);
        console.log(category);
        console.log(name);

        let product = Product();

        if (id == null && category == null && price == null && name == null) {
            console.log(1);
            const products = await Product.find();
            console.log(2);
            console.log(products);
            console.log(3);
            res.status(200).json({ products });
            console.log(4);
        }
        if (category != null && price != null && name != null) {
            console.log(5);
            product = await product.find({ category: { $eq: category }, name: { $eq: name }, price: { $lte: price } });
            res.status(200).json({ product });
        }
        if (category != null && price != null) {
            console.log(6);
            product = await product.find({ category: { $eq: category }, price: { $lte: price } });
            res.status(200).json({ product });
        }

        if (id != null) {
            console.log(7);
            product = await product.findById(id);
            res.status(200).json({ product });
        }
        if (category != null) {
            console.log(8);
            product = await product.find({ category: category });
            res.status(200).json({ product });
        }
        if (name != null) {
            console.log(9);
            product = await product.find({ name: name });
            res.status(200).json({ product });
        }
        if (price != null) {
            console.log(10);
            product = await product.find({ price: { $lte: price } });
            res.status(200).json({ product });
        }

    } catch (error) {
        console.log(11);
        console.log(error.message);
        res.status(500).json({ error: error.message });
    }

});


adminRouter.delete("/admin/delete/product", admin, async (req, res) => {
    try {
        let { id } = req.body.id;
        let deleteCount = await Product.findByIdAndDelete({ id });
        if (!deletedProduct) {
            res.status(400).json({ error: "INVALID_PRODUCT_ID" });
        }
        res.status(200).json({ deleteCount });
    } catch (error) {
        console.log(error.message);
        res.status(500).json({ error: error.message });
    }


});

module.exports = adminRouter;