import 'bootstrap/dist/css/bootstrap.min.css'
import './App.css';
import Button from 'react-bootstrap/Button'
import LoginSignUp from './LoginSignUp';
import Header from './Header';
import { useState, useEffect } from 'react'
import MyMusicBody from './MyMusicBody';
import Error from './Error';

function App() {
  const [user, setUser] = useState(null)
  const [errors, setErrors] = useState([])

  useEffect(()=> {
    fetch("/me")
    .then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setUser(user);
        })
      } else {
        res.json().then((err) => {
          setErrors(err.errors);
        });
      }
    })}, 
  []) 

  function handleLogout (){
    console.log("logging out")
    fetch("/logout", {
      method: "DELETE"
    })
    .then(resp => resp.json())
    .then(setUser(null))
  }


  if (!user) return  <div className="App"><LoginSignUp setUser = {setUser}/></div>
  
  return (
    <div className="App">
      <Header />
      <Button id="logout" onClick = {handleLogout} data-bs-toggle="tooltip" data-bs-placement="top" title="Logout from your account">Log out</Button>
      <h1 id="user-welcome">Welcome {user.name}! We hope you enjoy listening to some good music today.</h1>
      {/* {errors.map((err) => (<Error key={err}>{err}</Error>))} */}
     { user ? 
        <MyMusicBody user = {user}/> 
        : 
        <LoginSignUp />
     }
    </div>
  );
}

export default App;
