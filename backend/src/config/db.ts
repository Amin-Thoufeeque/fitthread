import mongoose from "mongoose";
const connnectDb = async () => {
    try {
        const connect = await mongoose.connect(process.env.MONGO_DB_URL || '')
        console.log(connect.connection.host)
    } catch (e) {
        console.log('Error while connecting db ' + e)
    }
}

export default connnectDb;