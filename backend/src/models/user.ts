import { Schema,model,InferSchemaType } from "mongoose";

const userSchema =new Schema({
    name:{
        type:String,
        required:true
    }
    ,
    email:{
        type:String,
        required:true,
        unique:true
    },
    password:{
     type:String,
     required:true,

    }
});

export type UserType = InferSchemaType<typeof userSchema>;
const User = model('User',userSchema);
export default User;