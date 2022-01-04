import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import { useState } from 'react'
import Error from './Error'

export default function LoginForm ( {handleFormDisplay, setUser} ) {
    const [errors, setErrors] = useState([])
    const [formData, setFormData] = useState({
        email: "",
        password: ""
    })

    function handleFormChange(e){
       //console.log("form changing" , e.target)
        setFormData({...formData, [e.target.name]: e.target.value})
        console.log(formData)
       
    }

    function handleSubmit(e){
        e.preventDefault()
        console.log("Form submitting...")
        const newData = {...formData}
        fetch("/login", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(newData),
          }).then((res) => {
            if (res.ok) {
              res.json().then((user) => {
                setUser(user);
              });
            } else {
              res.json().then((err) => {
                setErrors(err.errors);
              });
            }
          });
          setFormData({
              username: "",
              password: "",
            })
    }

    return (
        <div>
            <fieldset className="form-container">
            <legend>Log into your account:</legend>
           {errors.map((err) => (<Error key={err}>{err}</Error>))}
            <Form onSubmit={handleSubmit}>
            
                <Form.Group className="mb-3" controlId="formGroupEmail">
                    <Form.Label>Email address:</Form.Label>
                    <Form.Control type="email" placeholder="Enter email" name="email" value={formData.email} onChange={handleFormChange}/>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formGroupPassword">
                    <Form.Label>Password:</Form.Label>
                    <Form.Control type="password" placeholder="Password" name="password" value={formData.password} onChange={handleFormChange} />
                    <Form.Text id="passwordHelpBlock" muted>
                        Your password must be at least 6 characters long.
                    </Form.Text>
                </Form.Group>
                <Button className = "btn-default" type="submit">Login</Button>
                <h3>Don't have an account yet? <Button onClick = {handleFormDisplay}>Sign Up Here!</Button></h3>
                
            </Form>
            </fieldset>
       
        </div>
    )
}


