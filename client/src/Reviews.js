import { useState } from "react"

export default function Reviews ( {song, user} ) {
    const [reviewContent, setReviewContent] = useState({
        song_id: song.id,
        user_id: user.id,
        content: ""
    })

    function handleFormInput(e){
        setReviewContent({...reviewContent, [e.target.name]: e.target.value})
    }

    function handleSubmit (e) {
        e.preventDefault();
        console.log("form submitting...")
    }

    //if (song.reviews.length = 0) return <div><h6>Currently no reviews for this song in the database. Add your review...</h6></div>

    const reviews = song.reviews.map(review => <li key = {review.id}> {review.content} </li>)

    return(
        <div>
            <ul>
                {reviews}
            </ul>
            <form onSubmit = {handleSubmit}>
                <label>Add a review:</label>
                <input type = "text" name = "content" placeholder = "type your review here" value = {reviewContent.content} onChange = {handleFormInput}>
                </input>
                <button type = "submit">Post Review</button>
            </form>
        </div>
    )
}