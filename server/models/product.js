const mongoose = require('mongoose')

const productSchema = mongoose.Schema({
    name: {
        type: String,
        required: true,
        trim: true,
    },
    description: {
        type: String,
        required: true,
        trim: true,
    },
    imageUrls: [
        {
            type: String,
            required: true,
        }
    ],
    quantity: {
        type: String,
        required: true,

    },
    price: {
        type: Number,
        required: true,
    },
    category: {
        type: String,
        required: true,
    },
    currency: {
        type: String,
        required: true,
    },
    rating: {
        type: Number,

    },
    reviews: [
        {
            type: String,

        }
    ]


});

const Product = mongoose.model("Product", productSchema);
module.exports = Product;
