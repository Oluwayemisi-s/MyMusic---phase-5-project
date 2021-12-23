import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import { useState } from 'react'
import Error from './Error'

export default function SignUpForm ({handleFormDisplay, setUser}) {
    const [errors, setErrors] = useState([])
    const [formData, setFormData] = useState({
        name: "",
        email: "",
        password: "",
        password_confirmation: ""
    })

    function handleFormChange(e){
        console.log("changing")
        setFormData({...formData, [e.target.name]: e.target.value})
        console.log(formData)
       
    }

    function handleSubmit (e){
        e.preventDefault()
        console.log("Form submitting ")
        const newData = {...formData}
        fetch("/users", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(newData),
          }).then((res) => {
            if (res.ok) {
              res.json().then((user) => {
                setUser(user);
                setFormData({
                  name: "",
                  email: "",
                  password: "",
                  password_confirmation: "",
                })
              });
            } else {
              res.json()
              .then((err) => setErrors(err.errors));
            }
          });
      
    }

    return (
        <div>
            <fieldset className="form-container">
            <legend>Sign up for an account:</legend>
           {errors.map((err) => (<Error key={err}>{err}</Error>))}
            <Form onSubmit={handleSubmit}>

                <Form.Group className="mb-3" controlId="formGroupName">
                    <Form.Label>Name:</Form.Label>
                    <Form.Control type="text" placeholder="Enter Name" name="name" value={formData.name} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupEmail">
                    <Form.Label>Email address:</Form.Label>
                    <Form.Control type="email" placeholder="Enter email" name="email" value={formData.email} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupPassword">
                    <Form.Label>Password:</Form.Label>
                    <Form.Control type="password" placeholder="Password" name="password" value={formData.password} onChange = {handleFormChange}/>
                    <Form.Text id="passwordHelpBlock" muted>
                        Your password must be at least 6 characters long.
                    </Form.Text>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formGroupPasswordConfirm">
                    <Form.Label>Password Confirmation:</Form.Label>
                    <Form.Control type="password" placeholder="Password confirmation" name="password_confirmation" value={formData.password_confirmation} onChange = {handleFormChange}/>
                    <Form.Text id="passwordHelpBlock" muted>
                        Password must match what you have above.
                    </Form.Text>
                </Form.Group>
                <Button className = "btn-default" type="submit">Sign Up</Button>
                <h3>Already have an account? <Button onClick = {handleFormDisplay}>Login Here!</Button></h3>
            </Form>
            </fieldset>
        </div>
    )
}


// {/* <form className = "signup-login-form" onSubmit={handleSubmit}>
//         <fieldset>
//         <legend>Sign up for an account:</legend>

//         {/* {errors.map((err) => (<Error key={err}>{err}</Error>))} */}

//             <label htmlFor="name">Name:</label>
//             <input
//                 id="name-signup-input"
//                 type="text"
//                 name="name"
//                 value={formData.name}
//                 onChange={handleFormChange}
//             />
//             <br/>
            
//             <label htmlFor="email">Email:</label>
//             <input
//                 id="email-signup-input"
//                 type="text"
//                 name="email"
//                 value={formData.email}
//                 onChange={handleFormChange}
//             />
//            <br/>
//             <label htmlFor="password">Password:</label>
//             <input
//                 className="password-signup-input"
//                 type="password"
//                 name="password"
//                 value={formData.password}
//                 onChange={handleFormChange}
//             />
//             <br/>
//             <label htmlFor="password_confirmation">Confirm Password:</label>
//             <input
//                 className="password-signup-input"
//                 type="password"
//                 name="password_confirmation"
//                 value={formData.password_confirmation}
//                 onChange={handleFormChange}
//             />
//             <br/>
//             <button type="submit">Sign Up</button>
//         </fieldset>
//         </form>
//         <h3>Already have an account? <button onClick = {handleFormDisplay}>Log In Now!</button></h3> */}