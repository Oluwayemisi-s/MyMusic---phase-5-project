PlaylistSong.destroy_all
Review.destroy_all
Playlist.destroy_all
User.destroy_all
Song.destroy_all

test_data = 
[
    {
        strAlbum: "Made In Lagos",
        strArtist: "Wizkid Ft. Tems",
        strDescription: "While Essence technically dropped in 2020 as part of Wizkid's Made In Lagos album, the new year has seen the song catapult into massive levels, even making it into the U.S. Apple Music Top 50 charts. Kicked off by outstanding vocals from Tems, Essence sees both Nigerian stars riding an undulating synth piano riff — crafted by producers Legendury Beatz and P2J — into the perfect breezy summer track. It's no wonder celebs like Kevin Hart, Khloe Kardashian, Kylie Jenner have been posting of videos of themselves jamming to the track as the weather turns warm in the Northern hemisphere.",
        strGenre: "Afro-pop",
        strMood: "Flirtatious",
        strMusicVid: "https://youtu.be/jipQpjUA_o8",
        strTrack: "Essence",
        strTrackThumb: "data:image/jpeg;base64,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"
    },
    {
        strAlbum: "One of the Boys",
        strArtist: "Katy Perry",
        strDescription: "I Kissed A Girl is a song performed by American recording artist Katy Perry for her debut album One of the Boys (2008). It was released as the album's first single on April 28, 2008 through Capitol Records. It was written by Perry, Lukasz Gottwald, Max Martin and Cathy Dennis, with production helmed by Gottwald under his production name Dr. Luke. Perry says the song is about the magical beauty of a woman. The song is a electro-rock number that runs through a throbbing beat and contains influences of New Wave.",
        strGenre: "Pop",
        strMood: "Cheerful",
        strMusicVid: "https://www.youtube.com/watch?v=tAp9BKosZXs",
        strTrack: "I Kissed a Girl",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/tyvpry1359422964.jpg"
    },
    {
        strAlbum: "Echoes, Silence, Patience & Grace",
        strArtist: "Foo Fighters",
        strDescription: "The Pretender is a song by the American alternative rock band Foo Fighters. It was the first single from the group's 2007 album Echoes, Silence, Patience & Grace.",
        strGenre: "Rock",
        strMood: "Energetic",
        strMusicVid: "https://www.youtube.com/watch?v=SBjQ9tuuTJQ",
        strTrack: "The Pretender",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/yywqts1340623131.jpg"
    },
    {
        strAlbum: "Twice As Tall",
        strArtist: "Burna Boy",
        strDescription: "Burna Boy unleashed his brand new single, Kilometre. The Chopstix-produced song sees the Nigerian superstar singing about the distance he's traveled, literally and figuratively, to reach his current level as one of the top African artists in the world. Kilometre is an energetic track built on a repetitive refrain that will get stuck in people's heads and soundtrack many a dance floor to come.",
        strGenre: "Dancehall",
        strMood: "Feel good",
        strMusicVid: "https://youtu.be/eKv5CBr-kKo",
        strTrack: "Kilometre",
        strTrackThumb: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIAGJXMaaZDXkwQvMlqFWowhvcB0Uy7_uJ-A&usqp=CAU"
    },
    {
        strAlbum: "Daytime Friends",
        strArtist: "Kenny Rogers",
        strDescription: "We do not have a description for this song",
        strGenre: "Country",
        strMood: "Information not provided",
        strMusicVid: "https://www.youtube.com/watch?v=0T1J8JuTtR8",
        strTrack: "Lady",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/uwrvxv1584966953.jpg"
    },
    {
        strAlbum: "Music Has the Right to Children",
        strArtist: "Boards of Canada",
        strDescription: "We do not have a description for this song",
        strGenre: "Ambient",
        strMood: "Trippy",
        strMusicVid: "https://www.youtube.com/watch?v=yT0gRc2c2wQ",
        strTrack: "Roygbiv",
        strTrackThumb: "https://m.media-amazon.com/images/I/81JHZJe26fL._SS500_.jpg"
    },
    {
        strAlbum: "Afro Pop Vol1",
        strArtist: "Adekunle Gold",
        strDescription: "Adekunle Gold shares his new single and music video for It Is What It Is, a song about acceptance and remaining calm and centered in the face of life's adversities. The truth about freedom is it is only found in clarity of self, Adekunle mentions. I believe this song is about letting yourself be free from every other voice but the one guiding you internally.",
        strGenre: "Afro-pop",
        strMood: "Feel good",
        strMusicVid: "https://youtu.be/fgNKzf92gNo",
        strTrack: "It Is What It Is",
        strTrackThumb: "https://guardian.ng/wp-content/uploads/2020/08/maxresdefault-11-e1597997449889.jpg"
    },
    {
        strAlbum: "Space Oddity",
        strArtist: "David Bowie",
        strDescription: "Space Oddity is a song written and recorded by David Bowie. It was first released as a 7-inch single on 11 July 1969. It was also the opening track of his second studio album, David Bowie. It became one of Bowies signature songs and one of four of his songs to be included in The Rock and Roll Hall of Fames 500 Songs that Shaped Rock and Roll.",
        strGenre: "Rock",
        strMood: "Weird",
        strMusicVid: "https://www.youtube.com/watch?v=iYYRH4apXDo",
        strTrack: "Space Oddity",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/xsqwwq1569313472.jpg"
    },
    {
        strAlbum: "x",
        strArtist: "Ed Sheeran",
        strDescription: "Thinking Out Loud is a song by English singer-songwriter Ed Sheeran. It features production from frequent collaborator Jake Gosling. The song was released as an instant grat digital download to the iTunes Store on 18 June 2014, serving as a promotional single from his second studio album, x (2014). It entered the UK Singles Chart at number 26 and has since peaked at number 13. After only sixteen hours, the video hit 2,000,000 views on YouTube.",
        strGenre: "Pop",
        strMusicVid: "https://www.youtube.com/watch?v=lp-EO5I60KA",
        strTrack: "Thinking Out Loud",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/xtxtyx1432838266.jpg"
    },
    {
        strAlbum: "19",
        strArtist: "Adele",
        strDescription: "Chasing Pavements is the second single from soul singer Adele. Adele performed the song on Friday Night with Jonathan Ross on 7 December 2007. It was released digitally in Ireland on 13 January 2008 and entered the Irish singles chart at number 26 through download sales alone. Having received a physical release, the single then leaped 19 places to number seven, where it peaked. On 20 January, the single entered at number two in the UK singles chart on downloads alone. Chasing Pavements was the 27th best selling single of 2008 in the UK, with over 280,000 sales.  anorexia. The second was in a beginning scene of Charlie Dean's custody battle. The third was in a scene showing Dominic Reilly reflecting on Tina McQueen talking to him, which was aired on 15 October. The song was also featured in Wild Child, starring Emma Roberts and the late Natasha Richardson and TV shows such as 90210 and Glee. Adele performed Chasing Pavements along with Cold Shoulder on Saturday Night Live on 18 October 2008.",
        strGenre: "Soul",
        strMood: "In Love",
        strMusicVid: "https://www.youtube.com/watch?v=08DjMT-qR9g",
        strTrack: "Chasing Pavements",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/yyqptv1368373354.jpg"
    },
    {
        strAlbum: "A Better Time",
        strArtist: "Davido ft. Ckay",
        strDescription: "Davido just dropped the playful music video for his A Better Time cut La La, featuring Ckay. The video follows Davido, Ckay and Peruzzi as they play a football game between team 30BG and team Boyfriend FC. Get into the Dalia Dias-directed clip above",
        strGenre: "Afro-pop",
        strMood: "Feel good",
        strMusicVid: "https://youtu.be/NM8cY2VzqkI",
        strTrack: "La La",
        strTrackThumb: "https://tunezjam.com/images/Davido-A-Better-Time-Album-Artwork2.jpg"
    },
    {
        strAlbum: "Reverence",
        strArtist: "Faithless",
        strDescription: "Insomnia is the title of a song recorded by British dance group Faithless. Released as the band's second single, it became one of their most successful. It was released in 1995 and became a hit in Dance Charts while peaking at #27 in the UK in 1995 and #1 in 1996 . The song also reached #48 in the UK chart as a re-entry in 2005, showing the song's longevity. The album version is nearly nine minutes long and contains some lyrics not able to be broadcast on the radio edit due to their explicit content. It also contains some bells chiming at the start of the song not generally known by the club-going public as many people know the Monster Mix or the Monster Mix Radio Edit. The Monster Mix was the mix featured on Faithless' greatest hits album Forever Faithless. The song topped the U.S. Hot Dance Club Play chart. The Moody Mix featured on some of the singles was also on the Reverence / Irreverence release.",
        strGenre: "Electronic",
        strMood: "Troubled",
        strMusicVid: "https://www.youtube.com/watch?v=LuqEbRzy_t8",
        strTrack: "Insomnia",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/rxxqyu1342291325.jpg"
    },
    {
        strAlbum: "OK Computer",
        strArtist: "Radiohead",
        strDescription: "Karma Police is a song by English alternative rock band Radiohead from their 1997 third studio album OK Computer. The song's title and lyrics derive from an in-joke among the band, referring to the Hindu theory of cause and effect, known as karma. In 2008 the song was featured on the Radiohead: The Best Of collection.",
        strGenre: "Rock",
        strMood: "Sad",
        strMusicVid: "https://www.youtube.com/watch?v=1uYWYWPc9HU",
        strTrack: "Karma Police",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/qrvxpv1447964960.jpg"
    },
    {
        strAlbum: "Night Visions",
        strArtist: "Imagine Dragons",
        strDescription: "Demons is a song written and recorded by American indie rock band Imagine Dragons, for their major label debut EP Continued Silence. The song appears as the second track on the EP. the song was also included on their debut studio album, Night Visions as the fourth track. It was solicited to United States Triple A radio on January 28, 2013. It has been confirmed that the song will also be released as the fourth single from Night Visions in 2013. The song has so far reached No. 89 on the Billboard Hot 100 chart.",
        strGenre: "Indie",
        strMood: "Poignant",
        strMusicVid: "https://www.youtube.com/watch?v=orhJ1TzREZU",
        strTrack: "Demons",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/yxsysr1385301956.jpg"
    },
    {
        strAlbum: "Thriller",
        strArtist: "Michael Jackson",
        strDescription: "Billie Jean is a song by American recording artist Michael Jackson. It is the second single from the singer's sixth solo album, Thriller (1982). It was written and composed by Jackson and produced by him and Quincy Jones. There are contradictory claims to what the song's lyrics refer to. One suggests that they are derived from a real-life experience, in which a female fan claimed that Jackson (or one of his brothers) had fathered one of her twins. However, Jackson himself stated that Billie Jean was based on groupies he had encountered. The song is well known for its distinctive bassline by guitarist David Williams, and Jackson's vocal hiccups. The song was mixed 91 times by audio engineer Bruce Swedien before it was finalized. Awarded numerous honors—including two Grammy Awards, one American Music Award, and an induction into the Music Video Producers Hall of Fame—the song and corresponding music video propelled Thriller to the status of best-selling album of all time. The song was promoted with a short film that broke down MTV's racial barrier as the first video by a black artist to be aired in heavy rotation. Also, Jackson's Emmy-nominated performance on Motown 25: Yesterday, Today, Forever, in which Jackson premiered his moonwalk also helped to popularize the song. It was also promoted through Jackson's Pepsi commercials; during the filming of one commercial, Jackson's scalp was severely burned.",
        strGenre: "Pop",
        strMood: "Information not provided",
        strMusicVid: "https://www.youtube.com/watch?v=Zi_XLOBDo_Y",
        strTrack: "Billie Jean",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/tqqsur1418298940.jpg"
    },
    {
        strAlbum: "Talk About Poe",
        strArtist: "Ladipoe",
        strDescription: "Feeling has become the record that everyone have found pleasure in. Topping music charts both locally and in the continental hemisphere, the record has kept listeners in a shape that relates with everyone’s emotion. Feeling has a strong connection with it’s listeners, even as the record is perfect to fit for song on the year conversations. It is worthy enough to bag an award if not for the power of Joeboy’s “Alcohol”",
        strGenre: "Afro-pop",
        strMood: "Information not provided",
        strMusicVid: "https://youtu.be/a56eW1JM6M0",
        strTrack: "Feeling",
        strTrackThumb: "data:image/jpeg;base64,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"
    },
    {
        strAlbum: "Scouting for Girls",
        strArtist: "Scouting for Girls",
        strDescription: "She's So Lovely is the debut single by English pop rock band Scouting for Girls. It was written by band frontman Roy Stride and produced by Andy Green and released on 27 August 2007 as the lead single from their self-titled debut studio album (2007). The song peaked at number seven on the UK Singles Chart and also reached a peak of number six on the UK Download Chart. The song remained in the UK top 10 for six consecutive weeks.",
        strGenre: "Pop",
        strMood: "Happy",
        strMusicVid: "https://www.youtube.com/watch?v=7ABNEjPxWEg",
        strTrack: "She's So Lovely",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/rpxrwp1479295781.jpg"
    },
    {
        strAlbum: "Fundamental as Anything",
        strArtist: "Mental as Anything",
        strDescription: "Live It Up is a single by Australian rock band Mental As Anything, first released in 1985 in Australia and then in Europe and the U.S. in 1986/87. Written by Greedy Smith, the song was not originally expected to be a hit. After the song's appearance in the film Crocodile Dundee, however, the track became a worldwide success, reaching the top 10 across Europe.",
        strGenre: "New Wave",
        strMood: "....",
        strMusicVid: "https://www.youtube.com/watch?v=kK_eQImKnPA",
        strTrack: "Live It Up",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/puxsjg1607296016.jpg"
    },
    {
        strAlbum: "The Ballads",
        strArtist: "Mariah Carey",
        strDescription: "All I Want for Christmas Is You is a song recorded by American singer Mariah Carey for her fourth studio album and first holiday album, Merry Christmas (1994). Written and produced by Carey and Walter Afanasieff, the song was released as the lead single from the album on October 29, 1994. The track is an uptempo love song that includes bell chimes, backing vocals and synthesizers. The song has become a Christmas standard and continues to surge in popularity each holiday season.",
        strGenre: "R&B",
        strMood: "Christmas",
        strMusicVid: "https://youtu.be/aAkMkVFwAoo",
        strTrack: "All I Want for Christmas Is You",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/vxu7ks1606593772.jpg"
    },
    {
        strAlbum: "Hunting High and Low",
        strArtist: "A-ha",
        strDescription: "Take on Me is a song by the Norwegian synthpop band A-ha. Written by the band members, the song was produced by Alan Tarney for the group's first studio album Hunting High and Low, released in 1985. The song combines synthpop with a varied instrumentation that includes acoustic guitars, keyboards, and drums.",
        strGenre: "Synthpop",
        strMood: "Excitable",
        strMusicVid: "https://www.youtube.com/watch?v=djV11Xbc914",
        strTrack: "Take on Me",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/qqssrp1376605431.jpg"
    },
    {
        strAlbum: "Amore: Romantic Italian Love Songs",
        strArtist: "Luciano Pavarotti",
        strDescription: "No description included for this song",
        strGenre: "Alternative Rock",
        strMood: "Sad",
        strMusicVid: "https://www.youtube.com/watch?v=1uYWYWPc9HU",
        strTrack: "Nessun dorma",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/qrvxpv1447964960.jpg"
    },
    {
        strAlbum: "Nevermind",
        strArtist: "Nirvana",
        strDescription: "Smells Like Teen Spirit is a song by the American rock band Nirvana. It is the opening track and lead single from the band's second album, Nevermind (1991), released on DGC Records. Written by Kurt Cobain, Krist Novoselic, and Dave Grohl and produced by Butch Vig, the song uses a verse-chorus form where the main four-chord riff is used during the intro and chorus to create an alternating loud and quiet dynamic.The unexpected success of Smells Like Teen Spirit in late 1991 propelled Nevermind to the top of the charts at the start of 1992, an event often marked as the point where alternative rock entered the mainstream. Smells Like Teen Spirit was Nirvana's biggest hit, reaching number six on the Billboard Hot 100 and placing high on music industry charts all around the world in 1991 and 1992.",
        strGenre: "Grunge",
        strMood: "Sad",
        strMusicVid: "http://www.youtube.com/watch?v=hTWKbfoikeg",
        strTrack: "Smells Like Teen Spirit",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/urspuv1342344844.jpg"
    },
    {
        strAlbum: "Rio",
        strArtist: "Duran Duran",
        strDescription: "Hungry Like the Wolf is a song by the British new wave band Duran Duran. Written by the band members, the song was produced by Colin Thurston for the group's second studio album Rio. The song was released in May 1982 as the band's fifth single in the United Kingdom. It reached no. 5 on the UK Singles Chart, and received a gold certification by the British Phonographic Industry (BPI).",
        strGenre: "New Wave",
        strMood: "Dreamy",
        strMusicVid: "https://www.youtube.com/watch?v=oJL-lCzEXgI",
        strTrack: "Hungry Like the Wolf",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/hf4swt1639343602.jpg"
    },
    {
        strAlbum: "Reverence",
        strArtist: "Faithless",
        strDescription: "Insomnia is the title of a song recorded by British dance group Faithless. Released as the band's second single, it became one of their most successful. It was released in 1995 and became a hit in Dance Charts while peaking at #27 in the UK in 1995 and #1 in 1996 . The song also reached #48 in the UK chart as a re-entry in 2005, showing the song's longevity. The album version is nearly nine minutes long and contains some lyrics not able to be broadcast on the radio edit due to their explicit content. It also contains some bells chiming at the start of the song not generally known by the club-going public as many people know the Monster Mix or the Monster Mix Radio Edit. The Monster Mix was the mix featured on Faithless' greatest hits album Forever Faithless. The song topped the U.S. Hot Dance Club Play chart. The Moody Mix featured on some of the singles was also on the Reverence / Irreverence release.",
        strGenre: "Electronic",
        strMood: "Troubled",
        strMusicVid: "http://www.youtube.com/watch?v=LuqEbRzy_t8",
        strTrack: "Insomnia",
        strTrackThumb: "https://www.theaudiodb.com/images/media/track/thumb/rxxqyu1342291325.jpg"
    },
    {
        strAlbum: "Single",
        strArtist: "Gyakie Ft. Omah Lay",
        strDescription: "Ghanaian’s most beloved Gyakie’s mild tempo “Forever”, not only originally become one of Nigerian’s favorite track in 2021, but with Omah Lay’s effort on the remix laid side by side with Gyakie’s stint, emboldened the love Nigerian’s have for Gyakie and her music. The record not only raked huge amount of streams across digital platforms, but it also strongly connected the hearts of many love birds together.",
        strGenre: "Afro-pop",
        strMood: "Relaxing",
        strMusicVid: "https://youtu.be/q5URc13jOv0",
        strTrack: "Forever",
        strTrackThumb: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPERAQEBAPEBAPDw8NEA0QFRAQDQ8QFhEXFhYRFhMYHyggGBolGxgVIjEhJykrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGi8lHSUtLS0tLS0tLS0rLSsrKy0tLS0wLS0tLSstLS0tLS0tLS0rLSstLS8tLS0tKy0tKy0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQQCAwUGB//EAEYQAAICAQIDBAYFCAcIAwAAAAECAAMRBBIFITETIkFRBiMycYGRFEJSYaEzU1Rjk7Gz0wcVYnSiwdFDcnOCg8LS8TSjtP/EABoBAQADAQEBAAAAAAAAAAAAAAABAgMFBAb/xAAzEQACAQIDBQYGAQUBAAAAAAAAAQIDEQQhMRJBUWGBBRNxsdHwIjKRocHhMxQWQpLxBv/aAAwDAQACEQMRAD8A+Qmb9DobdQ4roqstsbpXWpdzzxnA8OY5zURPq/odQ2ntr0dKuqV6arVcSuR+xe/U6hAKNI1oBIrHaKuAV5l3z3Ziszr1pbCPlDVlSVIIZSVIPUEHBEme2p/o8sYMxvRQVd6kSt3sfmTWu0sNpdTSQCSfX1g9SRe4t6DpkA216dKKl07uylcmts3auwn2gT2oA5HvUjocybMKtBZHzuZ1VsxCqCzMQqqoJZmJwAAOpl9NCvaWglmqrdq95BrZsZ7xXntwoJx7hO96Haqqr6ZrGox2FKGsA7QGsbYtQxzVnJXLDmEW3GCQRW9z1Ti4UlU46Le/eX4POcQ4Vfp8dtVZXk47wIG7GSuftAEZHUZlHE+l6H0du12hRA9FLajVtxCxVVa6qq+wsWpVRO6vJLCRy5OmfHFCn+j4cnbVBqxYrMErcbtOAzWWbs93uo5HLnuq6F8CbM8qrR/y1PBzddprECs9borgMjMrKrqejKT1H3iepPB624patyoNPT2us1NdA2VV011mx6E6HAYdkG8evjOzqeGaji2mout1H0dQWt7Fw71bWdy9/gKkWqp9tYB7lI55cZB1krcD5tJnR43wttJaKbGU2iup7UGc0u6huxbPVlBGccgcjwnPg2i01dESMTKRIZIxMlmEyEliJniJAMyEg1RBEgiZQRLCxhiJliMSCtiIxJljQIGsRSN2Se7hmzyPgpBPzjQsldpFeJ3/AKCP0cfsNb/Mj6APzA/Y6z+ZFz2/0NTivv6HAkmeg+gD9HX9jq/5k5XEKtthAUJyHLbZX4eTkmLmVXDSpx2m19/QpYiZ5iDz2RrntOH+lPaaeui7Uvp7E1SaizU11KxtqqpWqtDt5vZguMuMHamT1njiIEGc6SlkzucS9KtVZqLb6rraVe1rK61Y+rXNewZ8SBTSM+OwSpfx3UNgix05ANtLAOwRE7Q/2iK68nzUHlObiTIuFRitEbk1BVQoA5F8nrkMMYxLfC+K9gLFauu+u01u9Nu4I1lZJRjtIOBubIzzBM5sGQaS+JWeh07vSDVs5s7ewMbfpGEOxBZ3MEIOWB2dYAxgBBjpMT6QazY1f0i3YyqhUNgbV7Paox0A7Kvp9kTmSDJMtiPA7ug9IOyr1QehL7tXhLb7nuHqt6uawtZU82Vcnd0AGMZz2uC+mC4QX9nQmnKFUpXVG2ytQR2FbG0qu5SyZcYAbIOQJ4iJKM5Uossa/VPfbZdZze62y5yOm92LHHxMrSZEGmggxBMAiZiaxMhBETKSJAkiGaIzEmQJMg1RjEkzXJRVuwmVdm1g2FOPBgGU+8HrNbtNZOYMJTtodH+sW5+q0n7KudnWrWguIp0/c7fHq1+pfWg/BjPJnofcZ6HWcSpftQtgO/6Rjk3PN9Tjw8gflIZ0MNitqE9uWe6/g/zY28Kdbc76dPysoXlUo5Pvz+4TmcTI3oQqpuoochQFXJrBPIS3wfUImd7KmbdOeZxyG/MocQvVjXgg4ooU46gisAiEK9RPDxu879d/U0Zia8xLHP2yyRIxM5iZU9TQmMyiCDEyJMiCpBkGZGa2gpIiTMcwGkmW0TmIkwSRIk5kGCGRJkRmCqNokgTBXmzdBtFpkiZTDMnMg1TJJmh3k2tzmqSeepPOxkTMcyJ0ODLmwvgE01Pco8DZ7Kf4yD8IKU4upJR98301Lmk4YqZ7Qb3B2lDuNdb9TWFTvW2eYGAPEy7hByxWDnGzHDQc/wDDJz8N2Y1LCtXJyVrDjGe8yLYKgmfDtLd7MepAxOJ/Wt/2gF/NBKxTjy7PGMSDrzq0sNaKTXhr1b15PXW1lkulq+Go+doFThlXkGSsMRkJZU2TXnwYEqZwmUqcEEEEgg9QR1E9FpL1dFfACBbN1eeSqrIt1Y/sFXVwPBlnP47SQ6scEsrV2N4tZU5rL/EKD8ZJ58ZRi4d7Dl1T0962zdrWOVEnMiSc0vyJMiVOiRETHMEMSJMiCgmLCZSIKs1GYzMiYFZY80kA0yzNcmQQpGWZOZhmIG0STIkRBFxJ3SIkg3b+UxNhmuJBZzbMiZjEQVE6HBmxYU8bqnpU+AsIyn+IAfGc+TjMF6c9ialw9266HqNSq2K4OQtgdsgd5a2sFofHj2du9WHUA5nE/qq/wUFfzoes0kefaZxiXtJxNX/KHY5O4sdwrd+naBk71NnmRkHxEu7kPMmonOd2eGH/AOwjP3+zmQdedOlirSTfS1+t9OS111Wb16ShURVyCu2zdZg4YMyG+0fqwqBAfFjOfx20l1U4DKrWWL4rZa5sKfAMBLWq4miZwRa5ZTyLOm4DCvZawBsx4KAFE4bMWOSSSSSSepJ6mGefF14qHdQ5dLae9bKzvqYxIiWOaXpiTGZBMqe9sExIJmGZJm5GwzGAYkAkzBplmYtJREtDEmYkwZhB55MmREQVEREECIiAIiIAiIgCIiAJa4cm61FxuyTywXB5H6oIz8xKs2VWFSGAU48GAZfiDyMMtFpSTZ6X6BX+jp+xf+fH0Gv9Gr/Y2fz5zeHatrbNpro27bGYiijltrZh9TlzAnQdcKxC1cq7WHqdN1Wipx9Xzc/hB3Kc6VWO1GOWnyx5epkNBXlQaKxvIUE024yemfXTicVVQ67VCBqaLSq5wC1YJxmdvh7Ail9qIbBpWYIqoCe2vGcD7gJxOLe3X/ddN/CEgwxkYujtJLVblwKMREscksbpJM1GQWkG3eGwtMCZhmIKOdzaGmU0Sd0EqfE25mDNMSZjBEp3MszGIgoIiIIEREAREQBERAEREAREQBLXDk3WoNofJPdK9oDyP1cjPzlWb9KG3rsQWNk4rIFgJx9k9YZen8y8Ueq02WOxT3O+pCZNablIyRSBUmM+JYyvkFMNyLA1sMoh3GhKrKwW5B1asHBIyDynK1Wk1t35SvUOPBcEVj3IOQl7TPqgPWaW9zgA219yxwOgsG0rZjzIzIO2q7m9mUJJcWn+E9OvPLJ2KNqBduWFXZ9NjkdmbGQEqSu9ncAKCeQzOJxg+t25B7Kqmg46FkrCt+OZ09Q+pI9XprwRnFj95qs9TWiqqofvxmcK6hqztdCjcjtbkYPJjp/AoJO19bNLglmvflqiIljmmZmMmQZBLIiIgqIiIAiIgCJMSSSImW0+UnaYFmYRJkQQIiJAEREAREQBERAEucMTdbWNu7JPdwjZ7p8HIHzMpy9wX8vX/wBT+E8M0oq9SK5rzR3m0yDrUg99eiA6Z/OeWJP0Ufmk/ZaLyz+c8gflOVxgeoq/36f/AMVMsU8RpCoN2CtdSnk3LGnuQjp9twPjB23UpRqOEstN/EuJpkPSpD0HKvRHr0/2k4PF122kbdo2oQAK1GCOuKyR+Mt+jA6/8bSfvslXi/t1f3XTfwhDPHiJKrhlO1s+N+KKMSIknNJiREARESCBERAEkRLWh0+8iDSnTc5KKJ0mjLzs6fh9Y694/hN9dQUYHhLCKJU+qwnZ1OmviV3zMF0iAexMLNEh+p8pcEgiVOs8PTatsr6I4er4V4rOPbUVM9kROZxXQ5G4fGTc4faHZUXFzpLTcebiZOuDMZofMNWEREggREQBERAEs6HUdlYr4zt3cunVCP8AOVogtFuLTW4v6vXCytU24wa2znPs0JX/ANufjKEs6bR2WDKL3R1tbCUj3u3KdCjhNYAa19w8GB7HTkeXauMv/wAqmEejuq9d7bWu95K356XK3C9eKjjYXLWVMAvXub+WP+aa+Jlt6h0NbJVTWVbme5WBnHhnyneRezGFAq3dAN1HaD8b7f8ACJxOMJttYbdvJeWzsvD7GSR8TnzkG2IpTpUFFyur6aWvd+L5MoRESx4BERIIEREAREQCZ3+DV4XdOAJ6HQjFa/ecfjIZ1eyUu+cuCN+s1ldQzY2D4IObn3SrR6RUE4IsUcsPyPxOOk81rbS9jsTncx+Q5CVZdU1bM81b/wBFiFVbpJKK4q9/H9WPpQGPd4eWInE9FNWXrapsnssMp/snOV+B/fL/ABPiC6dNx7zNnYnmf/GZNNOx9hh+0KVTCLFN2ja75NZNfXJcS2+R5zXaeWDyDcp4vV8VvtJLO2D9VSVQfCbdFxm6tgWY2KDzRznl9xMv3bOL/c2GlOzjJR45fdX8rvkbeIV7WMqS/wAUtVyHU5VuhlCEcXFKKqy2dN3gIiIPOIiIAiIgCW+GDNtfIPzJ2lDaDyP+zHNpUm2izYwbCtg52tkqffiGWhLZmnwa8z0r98lg245yW/8AkJUM+yoKb6OfnWenWar9Sa1NuyxvDtaiH5Zx39WdzD3ALK9XFq3xv3Iw5g2brgOf1bkxanzaXs49YD77w3Twx9KqHu5WpIO/GpGom4S68ObW625O3PLM4dvFbDkVkVA9ey5M3+9Ye8/xMogT0eq0tb951HPpb3KWb3Wpmlz79pnF12m7Jyne5AHvgK3MZ8CQfeDJOViqVWGc5XXl00XgirERJPGIiJAEREAREQCZ3eHvlAPIj984Mv8AD9SF6nA8fISGe7AVVTq56M4rVkBSfrDI92SP8pqnT4vTUrKamBVgWKg8l/8AflKVNZZlUdWIA+JxNk7nBq0HTqd1q1ZZZ3/6d30PJ32/Z2rn37uX+cp+kup33sPCvFYHu5n/ABZne4Jo/oysGKs5beSpz3V8Ofx+c8jqLN7s5+uxb5mUjnJs7uPU8N2ZRw08pNttdW7P/ZM0RETQ+cLOmtx3T0P4Gb5z5frbIzKSW89uGndbLJiIlD0iIiAIiIAmQGeQ5nyHWYy3wv8AK14z1PTtd3Q9Nne+UFoLako8WV+yb7J+Uzp7Ss7q+0R/Ndwaeszd+v8AlxP/AFjN36/5cT/1kHVXZlndTf0/ZxdNxRwe/UcnrZV6qw8/rrjY/wARKXEHVnJQYBA5dmKiOXig5Z93KenPbfr/AJcT/wBZ5zjO7tm3bs4X2+2z0/W96GUxlKcKS2pXzW63587vmUIiJY5giIkECIiAIiIJNd1uOQ6yuzk9SZFjZOZhNUrHNqVHJ65CbFYggjkQcg+RE1xJMj0Oh9IcHF6bhn20wrfFek5ut09aHNdgdTjb1DYxz3A9DmUIkKKWh7a2Pq16ahW+K2jfzK9r5rXTfnzEREk8QljTvg48DK8kQ1ctGTi7ovxJkTE6giIgCIiAJe4J+Xq/6n8J5Rlrh94rsV2zhN2cdeaEf5wzSk1GpFvS68zocXY9hXzP5SnxP6FVLlWsr215tTIrqHtcwfolyn3cyo95E5Ou19dlaIucq9Z54xgaetD+Kmc7ePMfhB7qmMUKzlCz0+1/U7no05Ockn1uk6k+dkpcXPfr/u2l/hCZcI4hXTu3E87KbO7g8k35/eJo1uoFhRh9Wmmo+9awDIMnVg8LGF876dWVoiJY8QiIkAREQBIc8j7pMxu9kySs/lZRiImpyxERAEREAREQBM1GSJJHIffmKfaHvgslmky5ERMTqiIiCBERAEucNJFtZGc5PQuD0PigLfISnM0YggqSD4EZB/CC0JbMlLg0eq7Wz7d/7TX/AMqO1s+3f+01/wDKnN4bTqd26zthXstPrXdN3qnxhSctzx0l+3IVzl89lcQdz9RpaGH4kn4mQfQwrznHaaaz33+uptrscsB2l3t11ti/UrYu/dg4esZ9kzg8actYhJyzafTMSepJqGTOzw9yy6ckkkjS5JOSfW6jxnD4t7df91038IQebGzc8Om3q0/qv3YoxESxxhERIIEREATC/wBk/D98zkWLkESSs03FpFCJkRiYzU5YiIgCIiAIiIBcerIGOoE10VnOSOk31HIHukzO+46HdRk1IRESpsIiIAiIgCW+GHFtfhzPQuD7J8UBb5CVJmlhU5UkEdCCQR8RBaEtmSlwaPVtYlRzaRXncHLYrsKNy8d9zn37ZgqN7DDcwUBwAbM+rFZbYCC9bqqEOvMETyvL7s+PnLdHELEUJ3XQcxXagsVD/YzzHwg6ce0Yt2krL6+nS2mdlo499UZNoVcMMdlUQa87Q+wBWO4IC7s1jY8hPP8AErlew7DlEWupD5qiBM/HGfjF/EbGBXFdaHAdalFYceTnqfiZUkGGKxMai2Iafr37V2iIljwm2hNzKp+syr9/M4n07j/9G2kRdWmit1Wq1WkRWOnVqbnLNaihWrrXcvdLnH3e+fLJYTW2qzMLbQze04dgze855wUnGTtZn0aj0C4b9E+k3a26gjZVY1ppSurVfRe1eso4DOQ427Vy3yJnzETa17kbS7EFt5UkkFsY3Y8/vmqQTGNr538RERJLGrUgYz49JUlnVeHxlaXjoc+v87EREsYiIiAIiIBb0x5EeU2yvpep90sTOWp0KDvBCIiVNhERAEREASzoLAltTtyCW1sT15BgTK0QWhJxkpLdmdh9dWQxzknTrVtO4bimpD4yOeCg6yNHr1Rqw7luz1Vdwtw3Q57XPjz7k5EQehYuopKXDL31zOlRrlTsOe8JS9VtfP1iva5K/Ig5+6UtQoDMFbeuThiCCw8yD4zVEWMZ1JTST3eiXkl7bJkREkoIiIIEREEiIiQQV9V1HuleImkdDnV/5GIiJYyEREAREQCxpep90sxEzlqdHD/xoiIiVNRERAEREAREQBERAEREAREQD//Z"
    },
]

puts 'songs seeding...🌱🌱🌱'
test_data.each do |song|
    Song.create(thumbnail: song[:strTrackThumb], title: song[:strTrack], artist: song[:strArtist], genre: song[:strGenre], album: song[:strAlbum], mood: song[:strMood], link: song[:strMusicVid], description: song[:strDescription])
end
puts 'songs done seeding...🌱🌱🌱'

puts 'users seeding...🌱🌱🌱'
    User.create(name: "Oluwayemisi", email: "olu@mymusic.com", password: "123456", password_confirmation: "123456")
    User.create(name: "Ladd", email: "ladd@mymusic.com", password: "123456", password_confirmation: "123456")
puts 'users done seeding...🌱🌱🌱'

puts 'reviews seeding...🌱🌱🌱'
    Review.create(song_id: Song.first.id, user_id: User.all.sample.id, content: "It is an awesome track")
    Review.create(song_id: Song.first.id, user_id: User.all.sample.id, content: "I don't care about it")
    Review.create(song_id: Song.second.id, user_id: User.all.sample.id, content: "This makes me soo happy")
    Review.create(song_id: Song.third.id, user_id: User.all.sample.id, content: "going off this drug")
    Review.create(song_id: Song.last.id, user_id: User.all.sample.id, content: "Definitly a hit")
puts 'reviews done seeding...🌱🌱🌱'

puts 'playlists seeding...🌱🌱🌱'
    Playlist.create(user_id: User.first.id, playlist_name: "My banger")
    Playlist.create(user_id: User.second.id, playlist_name: "Party")
puts 'playlists done seeding...🌱🌱🌱'

puts 'playlist_songs seeding...🌱🌱🌱'
    PlaylistSong.create(song_id: Song.first.id, playlist_id: Playlist.first.id)
    PlaylistSong.create(song_id: Song.second.id, playlist_id: Playlist.first.id)
puts 'playlist_songs done seeding...🌱🌱🌱'

puts 'all data successfully seeded...🌱🌱🌱'



# require 'json'

# require 'uri'
# require 'net/http'
# require 'openssl'


# url = URI("https://spotify-charts.p.rapidapi.com/us-top-200")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'spotify-charts.p.rapidapi.com'
# request["x-rapidapi-key"] = '5dd05e23e9mshba032d0b213b42dp1a4f4djsn7f5904387405'

# response = http.request(request)
# apiresp  = JSON.parse(response.body)

# pp apiresp[1]["streams"]