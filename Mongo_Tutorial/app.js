const express = require('express');
const {connectToDb, getDb} = require('./db');
const {ObjectId} = require('mongodb')

// Init app and middleware 
const app = express();

//db connection
let db;

connectToDb((err) => {
    if (!err) {
        app.listen(3000, () => {
        console.log("App Starting on Port 3000");
        })
        db = getDb();
    }
})
    

// routes

app.get('/books', (req, res) => {
    let books = []
    
    db.collection('books')
    .find() //cursor : object that points to a set of objects
    .sort({author:1})
    .forEach(book => books.push(book))
    .then(() => {
        res.status(200).json(books)
    })
    .catch(() => {
        res.status(500).json({error: "Could Not Fetch Data"})
    })
})

app.get('/books/:id', (req, res) => {

    if (ObjectId.isValid(req.params.id)) {
        
        db.collection('books')
            .findOne({_id: new ObjectId(req.params.id)})
            .then(doc => {
                res.status(200).json(doc)
            })
            .catch(err => {
                res.status(500).json({error: "Error in Document"})
        })
    }
    else {
        res.status(500).json({error: "Not a valid Doc Id"})
    }

})
