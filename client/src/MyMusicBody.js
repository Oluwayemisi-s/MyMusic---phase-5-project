import { Switch,Route } from "react-router-dom";
import AllSongsContainter from "./AllSongsContainer";
import Navigation from "./Navigation";
import AllArtistContainer from "./AllArtistContainer";
import LibraryContainer from "./LibraryContainer";
import AllGenresContainer from "./AllGenresContainer"
import AddSongForm from "./AddSongForm";
import EditProfile from "./EditProfile";

export default function MyMusicBody ( {user} ){

    return(
        <div>
            This is the entire content body!
            <Navigation /> 

            <Switch>
                <Route exact path = "/allsongs">
                  <AllSongsContainter user = {user} />
                </Route>
                <Route exact path = "/allartists">
                  <AllArtistContainer />
                </Route>
                <Route exact path = "/allgenres">
                  <AllGenresContainer />
                </Route>
                <Route exact path = "/mylibrary">
                  <LibraryContainer />
                </Route>
                <Route exact path = "/addasong">
                  <AddSongForm />
                </Route>
                <Route exact path = "/editprofile">
                  <EditProfile />
                </Route>
            </Switch>

        </div>
    )
}