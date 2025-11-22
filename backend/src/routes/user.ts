import { Router } from "express";
import { createUser,getUser } from "../controllers/userController";

const userRouter = Router();

userRouter.get('/',getUser);
userRouter.post('/create',createUser);

export default userRouter; 