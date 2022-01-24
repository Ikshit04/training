const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
    _id: mongoose.Types.ObjectId,
    username: String,
    password: String,
    firstName: String,
    lastName: String
});
module.exports = mongoose.model("user", userSchema, 'users');