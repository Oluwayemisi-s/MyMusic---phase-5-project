import { Switch,Route } from "react-router-dom";
import AllSongsContainter from "./AllSongsContainer";
import Navigation from "./Navigation";
import AllArtistContainer from "./AllArtistContainer";
import LibraryContainer from "./LibraryContainer";
import AllGenresContainer from "./AllGenresContainer"
import AddSongForm from "./AddSongForm";
import EditProfile from "./EditProfile";
import { useState } from 'react'


export default function MyMusicBody ( {user} ){
  const [search, setSearch] = useState("")

    return(
        <div>
            <Navigation /> 
            {/* <Search search = {search} setSearch = {setSearch}/> */}
            <Switch>
                <Route exact path = "/allsongs">
                  <AllSongsContainter user = {user} search = {search} setSearch = {setSearch}/>
                </Route>
                <Route exact path = "/allartists">
                  <AllArtistContainer user = {user} />
                </Route>
                <Route exact path = "/allgenres">
                  <AllGenresContainer user = {user}/>
                </Route>
                <Route exact path = "/mylibrary">
                  <LibraryContainer user = {user}/>
                </Route>
                <Route exact path = "/addasong">
                  <AddSongForm />
                </Route>
                <Route exact path = "/editprofile">
                  <EditProfile user = {user}/>
                </Route>
            </Switch>
          
        </div>
    )
}