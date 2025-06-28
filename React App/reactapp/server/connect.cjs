const { MongoClient } = require("mongodb")
require("dotenv").config({path: "./config.env"})

async fucntion main() {
    const Db = process.env.ATLAS_URI

    const client  = new MongoClient(Db)

    await client.connect()

    await client.db("React App").collections()

}