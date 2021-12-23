import { useState } from 'react'
import Button from 'react-bootstrap/Button'
import ReactPlayer from 'react-player'
import Error from './Error'

export default function PlaylistSongCard ( {song, id, onDeleteSongFromPlaylist} ){
    // console.log(song)
    // console.log(playlist)
    const [play, setPlay] = useState(false)
    const [errors, setErrors] = useState([])

    function handlePlayMusic () {
        setPlay(current => !current)
    }

    function handleDeleteMusic () {
        fetch(`/playlist_songs/${id}`, {
            method: "DELETE",
            headers: {
              "Content-Type": "application/json",
            }
          })
          .then (res => {
            if (res.ok){
                onDeleteSongFromPlaylist(id)
                alert("Song has been deleted from playlist.")
            } else {
              res.json().then((err) => {
                setErrors(err.errors);
              });
            }
          })
    }

    return(
        <div className="playlist-song-card">
            { play ? <ReactPlayer url={song.link} playing controls width = "250px" height = "250px"/> : <img src = {song.thumbnail} alt = "poster"/>}
            {/* <img src = {song.thumbnail} alt = "poster"/> */}
            <h6>Song Title: {song.title}</h6>
            <Button onClick = {handlePlayMusic}> { play? "⏹" : "▶️"} </Button> 
            <Button onClick = {handleDeleteMusic}> ✖️ Remove </Button> 
            {/* { play ? <ReactPlayer url={song.link} playing controls width = "250px" height = "180px"/> : null} */}
            
        </div>
    )
}