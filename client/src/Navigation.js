import { Navbar, Nav } from 'react-bootstrap'


export default function Navigation (){

    return(
        <div>
        
            <Navbar bg="primary" variant="dark">
                {/* <Container> */}
                    <Navbar.Brand href="#">Navbar</Navbar.Brand>
                        <Nav className="me-auto">
                        <Nav.Link href="#home">All Songs</Nav.Link>
                        <Nav.Link href="#genres">Genres</Nav.Link>
                        <Nav.Link href="#artists">Artists</Nav.Link>
                        <Nav.Link href="#library">My Library</Nav.Link>
                        <Nav.Link href="#addasong">Add a new song</Nav.Link>
                    </Nav>
                {/* </Container> */}
            </Navbar>

            
        </div>
    )
}