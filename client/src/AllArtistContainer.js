import Error from "./Error"
import { useState, useEffect } from "react"
import SongCard from "./SongCard"

export default function AllArtistContainer( {user} ){

    const [allArtists, setAllArtists] = useState([])
    const [errors, setErrors] = useState([])
    const [songsForArtist, setSongsForArtist] = useState([])

    useEffect(() => {
        fetch("/artists")
        .then((res) => {
          if (res.ok) {
            res.json().then((data) => {
                console.log(data)
                setAllArtists(data)});
          } else {
            res.json().then((err) => setErrors(err.errors));
          }
        }) 
    }, [])

    function handleArtistClick (artist){
      console.log(`${artist} clicked`)
      fetch(`/songs/${artist}`)
      .then((res) => {
        if (res.ok) {
          res.json().then((data) => {
              //console.log(data)
              setSongsForArtist(data)
          });
        } else {
          res.json().then((err) => setErrors(err.errors));
        }
      }) 
  }

    const artists = allArtists.map( artist => <h1 className = "genres-name" key = {artist} onClick = {() => handleArtistClick(artist)}>{artist}</h1>)
    const songs = songsForArtist.map( song => <SongCard key = {song.id} song = {song} user = {user}/>)

    return(
        <div className="genres-main">
          <div className="genres-container">
            {errors.map((err) => (<Error key={err}>{err}</Error>))}
            {artists}
          </div>
          <div className="genres-container-songs">
            {songs}
          </div>
        </div>
    )
}