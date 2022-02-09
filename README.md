# README
This README documents information about the MyMusic project.

# Project Title: 
    MyMusic - Flatiron Software Engineering Phase Five Capstone Project

# Link to app demo
    https://vimeo.com/662797872/ebef824748


# Project Owner: 
    Oluwayemisi Soremekun 
     - GitHub userName: Oluwayemisi-s

# Reason for the project:
    This project was built as a capstone project which is a requirment for completing the software engineering course at Flatiron school (class of 09/21). The main aim of the project is to apply and showcase the knowledge and skills acquired at the bootcamp. These skills are demonstrated in the use of JavaScript and React functional components - this encompasses using React states to manage and manipulate dynamically changing events on the DOM, setting and using controlled forms and persisting data to a backend server. I have also demostrated my skill of building a server side application to manage and communicate with the frontend of my react app using ruby on rails to manage a PostgreSQL database, define restful and non-restful routes, defining custom methods to manipulate/format data from the database, use serializers, manage authentication and validating data received from the frontend. Finally, I get to demostrated my knowledge and skills with CSS to design the web application, amongst others.

# Motivation for the project: 
    Simply put, i LOVE listening to music - particularly Nigerian music as i am Nigerian! There is probably - amlost always - a party going on in my head. Music has helped me get through some of the most difficult situations of my life and has accompanied me through some of the happiest moments as well. 
    With how much knowledge and skill i have gained over the last 3 months at Flatiron school, i wanted to build an app on something that I loved and make use of daily - a music app that could create and manage multiple playlists.

    Spotify, Apple music and dizza were great inspirations and even though MyMusic app, at the moment, cannot match the functionality and efficiency levels of these apps, i have been able to implement some of the most basic and useful features.

  # Technologies Used
    For this poject, I have incorporated the use of several technologies as were needed to achieve a functioning app. Highlighted below are the main technologies that were used for this project:

      1. Ruby on rails
      2. PostgreSQL
      3. React
      4. HTML/JSX
      5. ActiveRecord
      6. CSS
      7. BCrypt
      8. Sessions and cookies
      9. AudioDB API
      

# Project Description: 
   MyMusic app has been designed to be able to sign up a new user, or sign in an existing user after which an authenticated user is shown the entire list of all songs available in the database accompanied with all information stored on the database for the songs such as their title, thumbnail, genre, mood, artist, a description and also reviews that a related to each song.

   When the play button is pressed, the thumbnail changes to display the youtube video link of the selected song which can be paused or stopped. Also user can see a description of the song and reviews associated to each song by pressing the description and review buttons respectively. A user can also choose to add their own review for the song or delete a review they have previously posted for the song. Lastly, a user can add a song to their library specifying a playlist out of all the playlists the user has saved on their profile.

   Songs can be viewed or sorted based on their genre or the artists. New playlists can be added in the library and existing playlists can be deleted. Songs added to a playlist can also be removed by the user.

   A user can also choose to add new songs to the database by filling out the add to song form. All fields needs to be completed for the step to be successful. 

   As a user, you can also decide to edit your profile details - such as email, name or username. For this step to successfully go through, the password provided needs to match the password that is currently saved in the database i.e the one set at the time of signing up.

# Learnings and Struggles:
   Even though i wanted to build an app that would have a variety of audio songs in it, i realised that most APIs that had this amount of information had to be paid for. Other APIs which are free will provide only few details that could be used without an audio streaming link except you pay for legal rights to own it. Hence i had to resort to using youtube links after manually searching for the songs. In addition, the audioDB API i used, didn't have consistent information for all songs throughout and so i have to manually scrap the data provided by them to decide on the one to save in my database. Consequently, i have realised that an audio streaming app has a lot of background processes going on for licensing and the likes which are not known to the user.
   Because youtube video links were used, as against audio files, the autoplay, shuffle and repeat features i would have loved to incorporate were not achieveable at the time of presenting this project. 

    Goals for Future Iterations:
    - A darkmode feature for the app that can be toggled on and off
    - Ability of a user to continously play songs in their library one to the next, shuffle their songs, put a song on repeat etc.
    - Use audio files/audio streaming links as against youtube links
    - Use a better API to get more song information 

# Project setup:
    Steps highlighted below might not be exhaustive but covers the most important steps needed.
    - This project was built using ruby v 2.7.4p191 and React v 17.0.2
    - Fork and clone this repo on your system
    - Open file in the text editor
    - Run bundle install in the terminal after navigating to the folder
    - Navigate to the client folder inside of the parent folder and run npm install
    - Ensure postreSQL is already downloaded on system being used
    - Run command rails db:create
    - Run command rails db:migrate and rails db:seed
    - Run command rails s and in a seperate terminal window, navigate to the client folder and run command npm start
    - App should begin to run in the browser

# Acknowledgments:
    This project was accomplished with the help of the many resources provided by Flatiron Bootcamp, including my instructor whose support was unending and unwavering. 

# The Team/Collaborators

    This project was created and completed by:

    **Oluwayemisi Soremekun**

    *Instagram*: www.instagram.com/oluwayemisi_s/

    *Email*: oluwayemisi.soremekun@gmail.com

    *Youtube*: www.youtube.com/channel/UCOMU9_StCtTTqnwSr_Jlvvw



