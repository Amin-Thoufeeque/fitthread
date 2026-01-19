import { Response, Request } from "express";
import User from "../models/user";
import bcrypt from 'bcrypt';
import jwt from "jsonwebtoken";
import workouts from "../models/workouts";
import mongoose from "mongoose";


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
        const token = jwt.sign({ id: user._id }, process.env.JWT_Secret_Key || '')
        res.json({ user, token });
        console.log('Creating user');
    } catch (e) {
        res.status(500).json({ error: "Error: " + e })
    }
}

export const getUser = async (req: Request, res: Response) => {
    try {
        const { email, password } = req.body;
        const user = await User.findOne({ email })
        if (!user) {
            return res.status(400).json({ msg: "User with this email doesn't exist." })
        }
        const isPasswordMatch = await bcrypt.compare(password, user.password);
        if (!isPasswordMatch) {
            return res.status(400).json({ msg: "Incorrect password." })
        }
        const token = jwt.sign({ id: user._id }, process.env.JWT_Secret_Key || '')
        res.json({ token, user })
    } catch (e) {
        res.status(500).json({ error: "Error: " + e })
    }
}

export const isTokenValid = async (req: Request, res: Response) => {
    try {
        const token = req.header('auth-token');
        if (!token) {
            return res.json({ msg: 'No auth token,access denied' })
        }
        const verified = jwt.verify(token, process.env.JWT_Secret_Key || '');
        if (!verified) {
            return res.json({ status: false })
        }
        const payload = verified as jwt.JwtPayload;
        const user = await User.findById(payload.id)
        return res.json({ status: true, user })
    } catch (e) {
        res.status(500).json({ error: "Error: " + e })
    }
}
export const calculateBMI = (weightKg: number, heightCm: number): number => {
    const heightM = heightCm / 100;
    return Number((weightKg / (heightM * heightM)).toFixed(1));
};
export const updateUserWeight = async (req: Request, res: Response) => {
    try {
        const { userId } = req.params;
        const { weightKg } = req.body;
        const user = await User.findById(userId);

        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }


        const bmi = calculateBMI(weightKg, user.heightCm);

        // 3️⃣ Single update
        const updatedUser = await User.findByIdAndUpdate(
            userId,
            {
                weightKg,
                bmi,
            },
            { new: true, runValidators: true }
        );

        return res.status(200).json({
            message: "Weight updated successfully",
            user: updatedUser,
        });

    } catch (e) {
        res.status(500).json({
            message: "Failed to update weight",
            e,
        });
    }
}

export const updateUserHeight = async (req: Request, res: Response) => {
    try {
        const { userId } = req.params;
        const { heightCm } = req.body;
        const user = await User.findById(userId);

        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }


        const bmi = calculateBMI(user.weightKg, heightCm);


        const updatedUser = await User.findByIdAndUpdate(
            userId,
            {
                heightCm,
                bmi,
            },
            { new: true, runValidators: true }
        );

        return res.status(200).json({
            message: "Height updated successfully",
            user: updatedUser,
        });
    } catch (e) {
        res.status(500).json({
            message: "Failed to update weight",
            e,
        });
    }
}

