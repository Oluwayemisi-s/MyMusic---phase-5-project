import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import { useState } from 'react'
import Error from './Error'

export default function AddSongForm(){
    const [errors, setErrors] = useState([])
    const [formData, setFormData] = useState({
        title: "",
        thumbnail: "",
        artist: "",
        genre: "",
        album: "",
        mood: "",
        link: "",
        description: ""
    })

    function handleFormChange(e){
        console.log("form changing")
        setFormData({...formData, [e.target.name]: e.target.value})
    }

    function handleSubmit(e){
        e.preventDefault()
        console.log("form submitting") 
    }

    return(
        <div>
            <fieldset>
            <legend>Add a new song to our database here:</legend>
           {errors.map((err) => (<Error key={err}>{err}</Error>))}
            <Form onSubmit={handleSubmit}>

                <Form.Group className="mb-3" controlId="formGroupTitle">
                    <Form.Label>Song Title:</Form.Label>
                    <Form.Control type="text" placeholder="Enter song title" name="title" value={formData.title} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupThumbnail">
                    <Form.Label>Album/song thumbnail:</Form.Label>
                    <Form.Control type="text" placeholder="Enter thumbnail link" name="thumbnail" value={formData.thumbnail} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupArtist">
                    <Form.Label>Song Artist:</Form.Label>
                    <Form.Control type="text" placeholder="Enter artist's name" name="artist" value={formData.artist} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupGenre">
                    <Form.Label>Song Genre:</Form.Label>
                    <Form.Control type="text" placeholder="Enter genre" name="genre" value={formData.genre} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupAlbum">
                    <Form.Label>Song Album:</Form.Label>
                    <Form.Control type="text" placeholder="Enter song album" name="album" value={formData.album} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupMood">
                    <Form.Label>Song Mood:</Form.Label>
                    <Form.Control type="text" placeholder="Enter mood" name="mood" value={formData.mood} onChange = {handleFormChange}/>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupLink">
                    <Form.Label>Song Youtube Link:</Form.Label>
                    <Form.Control type="text" placeholder="Enter youtube link" name="link" value={formData.link} onChange = {handleFormChange}/>
                    <Form.Text id="linkHelpBlock" muted>
                        I currently do not have rights to directly stream songs. I will be using the song's youtube link in the interim.
                    </Form.Text>
                </Form.Group>
                <Form.Group className="mb-3" controlId="formGroupDescription">
                    <Form.Label>Description:</Form.Label>
                    <Form.Control type="text" placeholder="Enter song description" name="description" value={formData.description} onChange = {handleFormChange}/>
                    <Form.Text id="descriptionHelpBlock" muted>
                        Enter a short description that tells a story about the song you are adding. It will help other users connect with it...
                    </Form.Text>
                </Form.Group>
                <Button type="submit"> Add Song</Button>
                
            </Form>
            </fieldset>
        </div>
    )
}