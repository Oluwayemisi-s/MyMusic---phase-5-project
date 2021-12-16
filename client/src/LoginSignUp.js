import { useState } from "react"
import LoginForm from "./LoginForm"
import SignUpForm from "./SignUpForm"

export default function LoginSignUp( {setUser} ) {

    const [signedUp, setSignedUp] = useState(false)

    function handleFormDisplay(){
        setSignedUp(current => !current)
    }

    return (
        <div> 
            {signedUp ? <LoginForm setUser = {setUser} handleFormDisplay = {handleFormDisplay}/> : <SignUpForm handleFormDisplay = {handleFormDisplay} setUser = {setUser}/>}
        </div>
    )
}

    
    
