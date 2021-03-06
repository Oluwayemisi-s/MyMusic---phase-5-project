
//import { useAutocomplete } from '@mui/base/AutocompleteUnstyled';

export default function Search ( {search, setSearch} ) {
    //const [search, setSearch] = useState("")

    return(
        <div className="search">
            <form className="searchbar" >
                <div className="ui input">
                    <label>Search for a song:</label>
                    <input
                    type="text"
                    placeholder="search..."
                    value={search}
                    onChange={(e) => setSearch(e.target.value)}
                    />
                </div>
            </form>
            {/* <Autocomplete
                disablePortal
                id="combo-box-demo"
                options={top100Films}
                sx={{ width: 300 }}
                renderInput={(params) => <TextField {...params} label="Movie" />}
            /> */}
            
        </div>
    )
}