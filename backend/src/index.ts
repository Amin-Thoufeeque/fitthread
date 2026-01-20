import express, { Request, Response } from 'express';
import dotenv from "dotenv";
import cors from "cors";
import rateLimit from 'express-rate-limit';
import userRouter from './routes/user';
import connnectDb from './config/db';
import adminRouter from './routes/admin';
import workoutRouter from './routes/workout';


dotenv.config();

const app = express();
const port = 3000;
const limiter = rateLimit({
    max:100,
    windowMs:60*60*1000,
    message:"We have recieved too many request from your ip please try after 1 hour"
})
app.use(express.json(
    {
        strict: true,
        type: ['application/json']
    }
))
app.use('/api',limiter)
app.use(cors())

connnectDb();

app.use('/api/user', userRouter);
app.use('/api/admin', adminRouter);
app.use('/api/workout', workoutRouter);

app.get('/', (req, res) => {
    res.json('backend is ready!!')
})

app.listen(port, '0.0.0.0', () => {
    console.log('Server running at port' + port)
})