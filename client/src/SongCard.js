import Button from 'react-bootstrap/Button'
import { useState, useEffect } from 'react'
import ReactPlayer from 'react-player'
import Modal from 'react-bootstrap/Modal'
import Reviews from './Reviews'
import Error from './Error'

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
            //console.log(data)
            setPlaylists(data)
        })
    }, [])
   
    function handleClickReview(){
        //console.log("Reviews was clicked")
        setShowReviews(current => !current)
    }

    function handleDescriptionClick(){
        //console.log("Description was clicked")
        setShowDescription(current => !current)
    }

    function handleAddToLibrary(){
       // console.log("Add to library was clicked")
        //setAddToLib(true)
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
                    console.log(data);
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
        //console.log("Play button was clicked")
        setPlay(current => !current)
    }

    function handleChange (e) {
        setAddToPlaylist({...addToPlaylist, [e.target.name]: e.target.value})
    }

    const options = playlists.map(playlist => <option key = {playlist.id} value={playlist.id}>{playlist.playlist_name}</option>)

        return (
            <div>
                <img src = {song.thumbnail} alt = "poster"/>
                <h6>Song Title: {song.title}</h6>
                <small>Album: {song.album} | Artist: {song.artist} | Genre: {song.genre} | Mood: {song.mood} </small>
                <br />
                {errors.map((err) => (<Error key={err}>{err}</Error>))}
                <Button onClick = {handlePlayMusic}> { play? "⏹" : "▶️"} </Button> 
                { addToLib ? <Button> ➖ Added to library </Button> : <Button onClick = {handleAddToLibrary}> ➕ Add to library </Button>}
                <br />
                {/* {addToLib ?  */}
                {/* {errors.map((err) => (<Error key={err}>{err}</Error>))} */}
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
                 {/* : null} */}
                <br/>
                <Button onClick = {handleClickReview}> Reviews </Button> <Button onClick = {handleDescriptionClick}> Decription </Button>
                { play ? <ReactPlayer url={song.link} playing controls /> : null}
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

                {showReviews ? 
                    <Reviews song = {song} user = {user}/> : null
                }
            </div>
        )
    }