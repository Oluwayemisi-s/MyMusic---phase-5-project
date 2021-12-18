import Error from "./Error"
import { useState, useEffect } from "react"

export default function GenreContainer(){

    const [allGenres, setAllGenres] = useState([])
    const [errors, setErrors] = useState([])

    useEffect(() => {
        fetch("/genres")
        .then((res) => {
          if (res.ok) {
            res.json().then((data) => {
                console.log(data)
                setAllGenres(data)});
          } else {
            res.json().then((err) => setErrors(err.errors));
          }
        }) 
    }, [])

    const genres = allGenres.map( genre => <h1 key = {genre}>{genre}</h1>)
    return(
        <div>
            {errors.map((err) => (<Error key={err}>{err}</Error>))}
            {genres}
        </div>
    )
}