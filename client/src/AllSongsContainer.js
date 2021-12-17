import { useState, useEffect } from "react"
import Error from "./Error"
import SongCard from "./SongCard"

export default function AllSongsContainter(){
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

    const songs = allSongs.map( song => <SongCard key = {song.id}/>)

    return(
        <div>
            {errors.map((err) => (
              <Error key={err}>{err}</Error>
            ))}
            This will contain the all songs
            {songs}
        </div>
    )
}