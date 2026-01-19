import { Router } from "express";
import { createUser, getUser, isTokenValid, updateUserHeight, updateUserWeight } from "../controllers/userController";

const userRouter = Router();

userRouter.post('/login', getUser);
userRouter.post('/signup', createUser);
userRouter.post('/isTokenValid', isTokenValid)
userRouter.patch('/update/:userId/weight', updateUserWeight)
userRouter.patch('/update/:userId/height', updateUserHeight)


export default userRouter; 