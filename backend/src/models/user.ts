import { Schema, model, InferSchemaType } from "mongoose";

const userSchema = new Schema({
    name: {
        type: String,
        required: true,
        trim: true
    }
    ,
    email: {
        type: String,
        required: true,
        trim: true,
        validate: {
            validator: (value) => {
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return value.match(emailRegex);
            },
            message: 'Please enter a valid email address'
        }
    },
    password: {
        type: String,
        required: true,
        trim: true,
        validate: {
            validator: (value) => {
                if (value.length < 8) {
                    return true;
                } else {
                    return false;
                }
            },
            message: "Password must be 8 characters long."
        }

    }
});

export type UserType = InferSchemaType<typeof userSchema>;
const User = model('User', userSchema);
export default User;