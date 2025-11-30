import { Router } from "express";
import { createUser,getUser,isTokenValid } from "../controllers/userController";

const userRouter = Router();

userRouter.post('/login',getUser);
userRouter.post('/signup',createUser);
userRouter.post('/isTokenValid',isTokenValid)

export default userRouter; 