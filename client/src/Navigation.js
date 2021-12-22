import music from './music.png'
import { Navbar, Nav } from 'react-bootstrap'


export default function Navigation (){

    return(
        <div  className="navigation">
        
            <Navbar bg="nav" variant="dark" expand="lg" >
                {/* <Container> */}
                <Navbar.Brand href="/allsongs">
                    <img src = {music} alt = "logo" width = "50px"/>   
                </Navbar.Brand>
                <Navbar.Toggle />
                {/* <Navbar.collapse> */}
                    <Nav className="me-auto">
                        <Nav.Link href="/allsongs">All Songs  |</Nav.Link>
                        <Nav.Link href="/allgenres"> Genres  |</Nav.Link>
                        <Nav.Link href="/allartists"> Artists  |</Nav.Link>
                        <Nav.Link href="/mylibrary"> My Library  |</Nav.Link>
                        <Nav.Link href="/addasong"> Add a new song  |</Nav.Link>
                        <Nav.Link href="/editprofile"> Edit your profile</Nav.Link>
                    </Nav>
                {/* </Navbar.collapse> */}
                    
                    
                {/* </Container> */}
            </Navbar>

            
        </div>
    )
}