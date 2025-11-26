import { Response, Request } from "express";
import User from "../models/user";
import bcrypt from 'bcrypt';
import jwt from "jsonwebtoken";


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
        res.status(500).json({ error: "Error: " + e })
    }
}

export const getUser = async (req: Request, res: Response) => {
    try {
        const { email, password } = req.body;
        const existingUser = await User.findOne({ email })
        if (!existingUser) {
            return res.status(400).json({ msg: "User with this email doesn't exist." })
        }
        const isPasswordMatch = await bcrypt.compare(password, existingUser.password);
        if (!isPasswordMatch) {
            return res.status(400).json({ msg: "Incorrect password." })
        }
        const token = jwt.sign({ id: existingUser._id }, process.env.JWT_Secret_Key || '')
        res.json({ token, email: existingUser.email, id: existingUser._id, name: existingUser.name, })
    } catch (e) {
        res.status(500).json({ error: "Error: " + e })
    }
}