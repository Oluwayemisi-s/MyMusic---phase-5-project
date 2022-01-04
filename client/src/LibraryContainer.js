import { useEffect, useState } from "react"
import Error from "./Error"
import PlaylistSongCard from "./PlaylistSongCard"

export default function LibraryContainer( {user} ){
    const [playlists, setPlaylists] = useState([])
    const [errors, setErrors] = useState([])
    const [addPlaylist, setAddPlaylist] = useState(false)
    //const [showSongs, setShowSongs] = useState(false)
    const [songs, setSongs] = useState([])
    const [formData, setFormData] = useState({
        user_id: user.id,
        playlist_name: ""
    })

    useEffect( () => {
        fetch('/playlists')
        .then (res => res.json())
        .then(data => {
            //console.log(data)
            setPlaylists(data)})
    }, [])

    function handleSongsInPlaylist(playlist){
        console.log("Clicked")
        fetch(`/playlist_songs/${playlist.id}`)
        .then (res => res.json())
        .then(data => {
            console.log(data)
            setSongs(data)
            //setShowSongs(current => !current)
        })
    }

    function handleAddPlaylist(){
        console.log("Adding")
        setAddPlaylist(current => !current)
    }

    function handleChange (e){
        setFormData({...formData, [e.target.name]: e.target.value})
    }

    function onPlaylistAdd(newPlaylist) {
        setPlaylists([newPlaylist, ...playlists])
    }

    function onDelete(deleted){
       const newPlaylist = playlists.filter(playlist => playlist.id !== deleted.id)
       setPlaylists(newPlaylist)
    }

    function onDeleteSongFromPlaylist(deleted){
      const newSongs = songs.filter(playlist => playlist.id !== deleted)
      setSongs(newSongs)
   }

  
    function handleAddPlaylistDelete (playlist){
        
        fetch(`/playlists/${playlist.id}`, {
            method: "DELETE",
            headers: {
              "Content-Type": "application/json",
            }
          })
          .then (res => {
            if (res.ok){
              onDelete(playlist)
            } else {
              res.json().then((err) => {
                setErrors(err.errors);
              });
            }
          })
    }

    function handleSubmit(e) {
        e.preventDefault()
        fetch("/playlists", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(formData),
          }).then((res) => {
            if (res.ok) {
              res.json().then((data) => {
                alert("New playlist has been created!");
                onPlaylistAdd(data)
                setFormData({
                    user_id: user.id,
                    playlist_name: ""
                })
              });
            } else {
              res.json().then((err) => {
                setErrors(err.errors);
              });
            }
          });

    }

    const songsInPlaylist = songs.map(playlist => <PlaylistSongCard key = {playlist.id} song = {playlist.song} id = {playlist.id} onDeleteSongFromPlaylist = {onDeleteSongFromPlaylist}/>)

    const list = playlists.map(playlist => <div className="library-playlist" key = {playlist.id}><h1 onClick = {() => handleSongsInPlaylist(playlist)}>{playlist.playlist_name}</h1> <button onClick = {() => handleAddPlaylistDelete(playlist)} data-bs-toggle="tooltip" data-bs-placement="top" title="Delete entire playlist from your library"> ✖️Delete</button> </div>)
    return(
      <div className="library-main">
          <div className="library">
            {list}
            <button onClick = {handleAddPlaylist}> {addPlaylist ? "Hide form" : "➕ Add a playlist"}</button>
            { addPlaylist ? 
            <form onSubmit = {handleSubmit}>
                {errors.map((err) => (<Error key={err}>{err}</Error>))}
                <label>Enter the new playlist name:</label>
                <input type = "text" name = "playlist_name" value = {formData.playlist_name} onChange = {handleChange} placeholder = "Enter playlist name..."/>
                <button type = "submit">Add now!</button>
            </form> : null
            }
          </div>
          <div className="library-songs">
            {songsInPlaylist} 
          </div> 
        </div>
    )
}