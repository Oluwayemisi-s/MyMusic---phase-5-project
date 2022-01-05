import Button from 'react-bootstrap/Button'
import { useState, useEffect } from 'react'
import ReactPlayer from 'react-player'
import Modal from 'react-bootstrap/Modal'
import Reviews from './Reviews'
//import Error from './Error'

export default function SongCard({ song, user }){
    const [showReviews, setShowReviews] = useState(false)
    const [errors, setErrors] = useState([])
    const [showDescription, setShowDescription] = useState(false)
    const [play, setPlay] = useState(false)
    const [addToLib, setAddToLib] = useState(false)
    const [playlists, setPlaylists] = useState([])
    const [addToPlaylist, setAddToPlaylist] = useState({
            song_id: song.id,
            playlist_id: ""
    })

    useEffect( () => {
        fetch('/playlists')
        .then (res => res.json())
        .then(data => {
            setPlaylists(data)
            setAddToLib(data.some(playlist => playlist.playlist_songs.some(s => song.id === s.song_id)))
        })
    }, [])
 
    function handleClickReview(){
       
        setShowReviews(current => !current)
    }

    function handleDescriptionClick(){
       
        setShowDescription(current => !current)
    }

    function handleAddToLibrary(){
        const data = addToPlaylist
        if (addToPlaylist.playlist_id !== ""){
            fetch("/playlist_songs", {
                method: "POST",
                headers: {
                  "Content-Type": "application/json",
                },
                body: JSON.stringify(data),
              }).then((res) => {
                if (res.ok) {
                  res.json().then((data) => {
                    setAddToLib(true)  
                  });
                } else {
                  res.json().then((err) => {
                    setErrors(err.errors);
                  });
                }
            })  
        } else {
            alert("Choose a playlist to add song to")
            setErrors(["Choose a playlist to add song to"])
        }   
    }

    function handlePlayMusic(){
        
        setPlay(current => !current)
    }

    function handleChange (e) {
        setAddToPlaylist({...addToPlaylist, [e.target.name]: e.target.value})
    }

    const options = playlists.map(playlist => <option key = {playlist.id} value={playlist.id}>{playlist.playlist_name}</option>)

        return (
            <div className = "song-card">
                <div className = "song-card-titles">
                { play ? <ReactPlayer url={song.link} playing controls width = "350px" height = "180px"/> : <img src = {song.thumbnail} alt = "poster"/>}
                
                    <div className = "song-card-text">
                        <h6>{song.title}</h6>
                        <small>Album: {song.album} | Artist: {song.artist} | Genre: {song.genre} | Mood: {song.mood} </small>
                    </div>
                </div>
                <br />
              
                <div className = "song-card-upper-buttons">
                    <Button className="btn-default" data-bs-toggle="tooltip" data-bs-placement="top" title="Play Song" onClick = {handlePlayMusic}> { play? "⏹" : "▶️"} </Button> 
                    
                    { addToLib ? <Button className="btn btn-default" data-bs-toggle="tooltip" data-bs-placement="top" title="Song already added to your library"> ➖ Added to library </Button> : <Button className="btn btn-default" onClick = {handleAddToLibrary} data-bs-toggle="tooltip" data-bs-placement="top" title="Add song to a playlist"> ➕ </Button>}
                    <br />
                  
                    <label htmlFor="Playlist-options">Select playlist to add song to:
                        <select
                            id="playlist"
                            name="playlist_id"
                            required
                            onChange={handleChange} 
                            >
                                <option value="">None</option>
                                {options}
                        </select>
                    </label>
                </div>
                
                <br/>
                <div className = "song-card-lower-buttons">
                    <Button variant="link" className="btn btn-link" onClick = {handleClickReview} data-bs-toggle="tooltip" data-bs-placement="top" title="Show all song reviews"> Reviews </Button> 
                    <Button variant="link" className="btn btn-link" onClick = {handleDescriptionClick} data-bs-toggle="tooltip" data-bs-placement="top" title="Show song description"> Decription </Button>
                    
                    <Modal
                        show={showDescription}
                        onHide={handleDescriptionClick}
                        backdrop="static"
                        keyboard={false}>
                        <Modal.Header closeButton>
                        <Modal.Title>A little story about the song</Modal.Title>
                        </Modal.Header>
                        <Modal.Body>
                        {song.description}
                        </Modal.Body>
                        <Modal.Footer>
                        <Button variant="secondary" onClick={handleDescriptionClick}>
                            Close
                        </Button>
                        </Modal.Footer>
                    </Modal> 
                </div>
                <div className = "song-card-conditionals">
                    {showReviews ? 
                    <Reviews reviews = {song.reviews} song = {song} user = {user}/> : null
                    }
                    
                </div>
            </div>
        )
    }