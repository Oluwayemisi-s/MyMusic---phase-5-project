import Button from 'react-bootstrap/Button'
import { useState } from 'react'
import Modal from 'react-bootstrap/Modal'
import Reviews from './Reviews'

export default function SongCard({ song, user }){
    const [showReviews, setShowReviews] = useState(false)
    const [showDescription, setShowDescription] = useState(false)
    const [play, setPlay] = useState(false)
    const [addToLib, setAddToLib] = useState(false)

    console.log(song)
    function handleClickReview(){
        console.log("Reviews was clicked")
        setShowReviews(current => !current)
    }

    function handleDescriptionClick(){
        console.log("Description was clicked")
        setShowDescription(current => !current)
    }

    function handleAddToLibrary(){
        console.log("Add to library was clicked")
        
    }

    function handlePlayMusic(){
        console.log("Play button was clicked")
    }

        return (
            <div>
                <img src = {song.thumbnail} alt = "poster"/>
                <h6>Song Title: {song.title}</h6>
                <small>Album: {song.album} | Artist: {song.artist} | Genre: {song.genre} | Mood: {song.mood} </small>
                <br />
                <Button onClick = {handlePlayMusic}> ▶️ </Button> <Button onClick = {handleAddToLibrary}> ➕ </Button>
                <br/>
                <Button onClick = {handleClickReview}> Reviews </Button> <Button onClick = {handleDescriptionClick}> Decription </Button>
                <Modal
                    show={showDescription}
                    onHide={handleDescriptionClick}
                    backdrop="static"
                    keyboard={false}>
                    <Modal.Header closeButton>
                      <Modal.Title>A little story about the song</Modal.Title>
                    </Modal.Header>
                    <Modal.Body>
                      {song.description}
                    </Modal.Body>
                    <Modal.Footer>
                      <Button variant="secondary" onClick={handleDescriptionClick}>
                        Close
                      </Button>
                    </Modal.Footer>
                </Modal> 

                {showReviews ? 
                    <Reviews song = {song} user = {user}/> : null
                }
            </div>
        )
    }




// import React from 'react';
// import cx from 'clsx';
// import { makeStyles } from '@material-ui/core/styles';
// import Card from '@material-ui/core/Card';
// import CardMedia from '@material-ui/core/CardMedia';
// import CardContent from '@material-ui/core/CardContent';
// import TextInfoContent from '@mui-treasury/components/content/textInfo';
// import { useFourThreeCardMediaStyles } from '@mui-treasury/styles/cardMedia/fourThree';
// import { useN04TextInfoContentStyles } from '@mui-treasury/styles/textInfoContent/n04';
// import { useOverShadowStyles } from '@mui-treasury/styles/shadow/over';

// const useStyles = makeStyles(() => ({
//     root: {
//       maxWidth: 343,
//       margin: 'auto',
//       borderRadius: 12,
//       padding: 12,
//     },
//     media: {
//       borderRadius: 6,
//     },
//   }));



//   export const MusicCardDemo = React.memo(function MusicCard() {
//     const styles = useStyles();
//     const mediaStyles = useFourThreeCardMediaStyles();
//     const textCardContentStyles = useN04TextInfoContentStyles();
//     const shadowStyles = useOverShadowStyles({ inactive: true });
//     return (
//       <Card className={cx(styles.root, shadowStyles.root)}>
//         <CardMedia
//           className={cx(styles.media, mediaStyles.root)}
//           image={
//             'https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80'
//           }
//         />
//         <CardContent>
//           <TextInfoContent
//             classes={textCardContentStyles}
//             overline={'Kesha'}
//             heading={'Inner Varnika'}
//             body={
//               'That year, collection of songs, review melodies, memories full, this is a long and warm journey'
//             }
//           />
//         </CardContent>
//       </Card>
//     );
//   });
//   export default MusicCardDemo

// 