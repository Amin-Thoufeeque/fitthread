import express, { Request, Response } from 'express';
import dotenv from "dotenv";
import cors from "cors";
import userRouter from './routes/user';
import connnectDb from './config/db';
import adminRouter from './routes/admin';
import workoutRouter from './routes/workout';


dotenv.config();

const app = express();
const port = 3000;

app.use(express.json(
    {
        strict: true,
        type: ['application/json']
    }
))
app.use(cors())

connnectDb();

app.use('/user', userRouter);
app.use('/admin', adminRouter);
app.use('/workout', workoutRouter);

app.get('/', (req, res) => {
    res.json('backend is ready!!')
})

app.listen(port, '0.0.0.0', () => {
    console.log('Server running at port' + port)
})