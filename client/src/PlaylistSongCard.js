import { useState } from 'react'
import Button from 'react-bootstrap/Button'
import ReactPlayer from 'react-player'

export default function PlaylistSongCard ( {song} ){
    const [play, setPlay] = useState(false)

    function handlePlayMusic () {
        setPlay(current => !current)
    }

    function handleDeleteMusic () {
        
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