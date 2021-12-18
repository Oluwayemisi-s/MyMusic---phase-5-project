import Error from "./Error"
import { useState, useEffect } from "react"

export default function AllArtistContainer(){

    const [allArtists, setAllArtists] = useState([])
    const [errors, setErrors] = useState([])

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

    const artists = allArtists.map( artist => <h1 key = {artist}>{artist}</h1>)

    return(
        <div>
            {errors.map((err) => (<Error key={err}>{err}</Error>))}
            {artists}
        </div>
    )
}