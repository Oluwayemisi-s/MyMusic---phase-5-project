//import { Alert } from "bootstrap";
import { useState } from "react"
import Error from "./Error";

export default function Reviews ( {song, reviews, user} ) {
    const [errors, setErrors] = useState([])
    const [reviewss, setReviewss] = useState(reviews)
    const [reviewContent, setReviewContent] = useState({
        song_id: song.id,
        user_id: user.id,
        content: ""
    })

    function handleFormInput(e){
        setReviewContent({...reviewContent, [e.target.name]: e.target.value})
    }

    function onReviewPost(new_post){
        setReviewss([...reviewss, new_post])
    }

    function handleSubmit (e) {
        e.preventDefault();
        fetch("/reviews", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(reviewContent),
          }).then((res) => {
            if (res.ok) {
              res.json().then((data) => {
                alert("Review posted.")
                onReviewPost(reviewContent) 
                setReviewContent({
                  song_id: song.id,
                  user_id: user.id,
                  content: ""
              })
              });
            } else {
              res.json().then((err) => {
                setErrors(err.errors);
              });
            }
          })  
    }

    const song_reviews = reviewss.map(review => <li key = {review.id}> {review.content} </li>)

    if (reviewss.length === 0) return (
    <div>
      <h6>Currently no reviews for this song in the database. Add your review...</h6>
      <form onSubmit = {handleSubmit}>
                <label>Add a review:</label>
                <input type = "text" name = "content" placeholder = "type your review here" value = {reviewContent.content} onChange = {handleFormInput}>
                </input>
                <button type = "submit">Post Review</button>
      </form>
    </div>)

    return(
        <div className="reviews">
            <ul>
                {song_reviews}
            </ul>
            {errors.map((err) => (<Error key={err}>{err}</Error>))}
            <form onSubmit = {handleSubmit}>
                <label>Add a review:</label>
                <input type = "text" name = "content" placeholder = "type your review here" value = {reviewContent.content} onChange = {handleFormInput}>
                </input>
                <button type = "submit">Post Review</button>
            </form>
        </div>
    )
}