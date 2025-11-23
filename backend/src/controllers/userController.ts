import { Response, Request } from "express";
import User from "../models/user";
import bcrypt from 'bcrypt';


export const createUser = async (req: Request, res: Response) => {
    try {
        const { name, email, password } = req.body;
        const existingUser = await User.findOne({ email });
        if (existingUser) {
            return res.status(400).json({ 'msg': 'user with email already exist.' })
        }
        const hashedPassword = await bcrypt.hash(password, 8);
        let user = new User({
            name,
            password: hashedPassword,
            email
        });
        user = await user.save();
        res.json(user);
        console.log('Creating user');
    } catch (e) {

    }
}

export const getUser = (req: Request, res: Response) => {
    try {
        console.log('Creating user');
    } catch (e) {

    }
}