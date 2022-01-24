const mongoose = require('mongoose');
const express = require('express');
const User = require('./config/user');
const bodyParser = require('body-parser');
const session = require('express-session')
require('dotenv/config')

const app = express();

app.use(bodyParser.json());

app.use(session({
    name: 'sid',
    resave: false,
    saveUninitialized: false,
    secret: 'sshSecretToken...',
    cookie: {
        sameSite: true,
        secure: false,
    }
}))

app.get('/home', async (req, res) => {
    if (req.session.userId) {
        const user = await User.findById(req.session.userId)
        res.send(`Hello, ${user.firstName}!!`)
    }
    else {
        res.statusCode = 403;
        res.send('Unauthorized')
    }
});

app.post('/login', async (req, res) => {
    if (req.session.userId) {
        return res.send({
            'message': 'Already logged in, logout before logging in again'
        })
    }
    const { username, password } = req.body;
    const user = await User.find({ username: username });
    if (user.length == 1) {
        if (user[0].password === password) {
            req.session.userId = user[0]._id;
            return res.redirect('/home');
        }
        else {
            res.send({
                'message': 'Incorrect Password'
            })
        }
    }
    else {
        res.statusCode = 404;
        res.send({ 'message': 'User not found' })
    }
})

app.get('/logout', async (req, res) => {
    if (!req.session.userId) {
        res.statusCode = 403
        return res.send({
            'message': 'Already logged out'
        })
    }
    req.session.destroy(err => {
        if (err) {
            return res.redirect('/home')
        }
        res.clearCookie('sid')
        res.send({
            'message': 'Success'
        })
    })
})

mongoose.connect(process.env.DB_CONNECTION, () => {
    console.log("Connected to db");

});
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}...`));