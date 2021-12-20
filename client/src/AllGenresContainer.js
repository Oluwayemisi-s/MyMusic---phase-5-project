import Error from "./Error"
import { useState, useEffect } from "react"
import SongCard from "./SongCard"

export default function GenreContainer( {user} ){

    const [allGenres, setAllGenres] = useState([])
    const [errors, setErrors] = useState([])
    const [songsInGenre, setSongsInGenre] = useState([])

    useEffect(() => {
        fetch("/genres")
        .then((res) => {
          if (res.ok) {
            res.json().then((data) => {
                //console.log(data)
                setAllGenres(data)});
          } else {
            res.json().then((err) => setErrors(err.errors));
          }
        }) 
    }, [])

    function handleGenreClick (genre){
        console.log(`${genre} clicked`)
        fetch(`/songs/${genre}`)
        .then((res) => {
          if (res.ok) {
            res.json().then((data) => {
                //console.log(data)
                setSongsInGenre(data)
            });
          } else {
            res.json().then((err) => setErrors(err.errors));
          }
        }) 
    }

    const genres = allGenres.map( genre => <h1 key = {genre} onClick = {() => handleGenreClick(genre)}>{genre}</h1>)
    const songs = songsInGenre.map( song => <SongCard key = {song.id} song = {song} user = {user}/>)
    return(
        <div>
            <div>
                {errors.map((err) => (<Error key={err}>{err}</Error>))}
                {genres}
            </div>
            <div>
                {songs}
            </div>
        </div>
    )
}