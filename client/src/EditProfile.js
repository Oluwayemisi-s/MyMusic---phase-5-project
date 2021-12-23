import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import { useState } from 'react'
import Error from './Error'

export default function EditProfile( {user} ){
    const [errors, setErrors] = useState([])
    const [formData, setFormData] = useState({
        name: "",
        email: "",
        password: ""
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
        fetch(`/users/${user.id}`, {
            method: "PATCH",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(newData),
          }).then((res) => {
            if (res.ok) {
              res.json().then((user) => {
                alert("Your profile information has been updated")
                setFormData({
                  name: "",
                  username: "",
                  email: "",
                  password: ""
                })
              });
            } else {
              res.json()
              .then((err) => setErrors(err.errors));
            }
          });
      
    }

    return(
        <div>
            <fieldset className="form-container">
            <legend>Edit your profile information here:</legend>
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
                        Enter the existing password to your account for validation.
                    </Form.Text>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formGroupPasswordConfirm">
                    <Form.Label>Confirmation password:</Form.Label>
                    <Form.Control type="password" placeholder="Password confirmation" name="password_confirmation" value={formData.password_confirmation} onChange = {handleFormChange}/>
                    <Form.Text id="passwordHelpBlock" muted>
                        Password must match what you have above.
                    </Form.Text>
                </Form.Group>
                <Button className = "btn-default" type="submit">Edit information</Button>
            </Form>
            </fieldset>
        </div>
    )
}