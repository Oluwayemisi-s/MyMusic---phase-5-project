import { useState, useEffect } from "react"
import Error from "./Error"
import SongCard from "./SongCard"
import Search from "./Search"

export default function AllSongsContainter( {user, search, setSearch} ){
    const [allSongs, setAllSongs] = useState([])
    const [errors, setErrors] = useState([])

    useEffect(() => {
        fetch("/songs")
        .then((res) => {
          if (res.ok) {
            res.json().then((data) => setAllSongs(data));
          } else {
            res.json().then((err) => setErrors(err.errors));
          }
        }) 
    }, [])
  
    const filteredSongs = allSongs.filter(song => song.title.toLowerCase().includes(search.toLowerCase()) || song.artist.toLowerCase().includes(search.toLowerCase()))
    // console.log(filteredSongs)
    //const filteredSongs = allSongs.filter(song => console.log(song.title, song.artist) )
    const songs = filteredSongs.map( song => <SongCard key = {song.id} song = {song} user = {user}/>)

    return(
        <div>
          <Search search = {search} setSearch = {setSearch}/>
            {errors.map((err) => (
              <Error key={err}>{err}</Error>
            ))}
            
            {songs}
        </div>
    )
}