import { Router } from "express";
import { createUser,getUser } from "../controllers/userController";

const userRouter = Router();

userRouter.post('/login',getUser);
userRouter.post('/signup',createUser);

export default userRouter; 