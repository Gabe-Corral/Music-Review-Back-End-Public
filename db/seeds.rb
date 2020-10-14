# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Users
thisHeat = "This Heat were many things, but popular was never one of them. It's almost funny to see this record getting so much deserved attention recently due to its reissue, because before now, I only knew a few people who had even heard of the thing. It's especially strange to see all the praise in light of Gareth Williams' death on Christmas Eve last year. He wasn't a person who ever really wanted to be famous or even known as a musician, and yet will doubtlessly be better known henceforth than he'd ever been during This Heat's existence.

English drummer/vocalist Charles Hayward (fresh from working with Brian Eno and Phil Manzanera in the avant-prog/fusion outfit Quiet Sun) formed This Heat with Charles Bullen (guitar, clarinet, viola, etc.) and Williams (bass, keyboards, tape manipulation, etc.) around 1975. Hayward had worked with a fairly broad array of jazz and prog bands (and post-This Heat, would continue to do so), though Bullen and Williams were much less traveled, even as they were accomplished musicians. Hayward and Bullen had been playing together as a duo for a few years prior to This Heat, and began playing with Williams only after Hayward completed his duties with Quiet Sun. Williams would actually leave the band before this album, Deceit, was released, and maintain a very busy career as an engineer for John Barry and various symphonic recordings. His interest in recording techniques may have provided the impetus for This Heat to experiment with tape loops and editing, which would play very large roles in their studio output.

This Heat's sound was something like a confrontation of prog, free-jazz and contemporary electronic music (think early Stockhausen, not Kraftwerk). They often get lumped into the post-punk (or even just 'punk') camp, for no better reason other than they started at the same time. They certainly sounded as if they were angry about something, and taking a glance at the lyric sheet for this album (and you'd better, as often the vocals seem more musical element than communicative force), they had fairly intense political/social statements to make-- though pinning down their position is often as hard as pinning down their sound. In any case, they were 'progressive' in the literal sense of the word, and though they came up with the first wave of punk, they didn't really sound like anyone else of the time (save a few other English radicals like Henry Cow or Art Bears, occasionally)."

theMagnetic = "There's only one question that really needs to be asked of 69 Love Songs: is it a brilliant masterpiece or merely very, very good? The title alone is enough to send music geeks the world over into a foamy-mouthed, epileptic frenzy. 69 songs equals 3 CDs equals nearly three solid hours of new Magnetic Fields material-- think of it! That's more than some notable bands released in their entire existence. Add that to the fact that the Magnetic Fields actually followed through with their concept without turning it into the indie-pop equivalent of Lou Reed's Metal Machine Music.

You see, I have this theory that music critics are suckers for novelty, and there isn't much in this world that's more novel than 69 Love Songs. It borders on being a prop in a Mark Leyner story-- it's hyperreal and excessive, yet perfectly plausible when you consider how weird reality is. Because of this, the album never feels like a ponderous, pretentious artistic statement (unlike most multi-CD releases). Stephin Merritt and company sound like they approached this ridiculously ambitious project with the most casual of airs, idly plucking melody after divine melody out of the air like low-hanging fruit from a tree. It's how pop music should sound, really: so natural and feather-light that you never notice the amount of effort that went into it.

Therein lies the paradox of 69 Love Songs-- it's such a basic style of music that it's easy to dismiss it as 'just pop music.' Of course, that's what it is, so should it really deserve such high praise? Should it rank among the best albums of the 1990s? Or is it too bizarre to be considered culturally important? I mean, Abbey Road is a pretty weird album, too. Then again, Abbey Road isn't three hours long.

Regardless, Stephin Merritt has proven himself as an exceptional songwriter, making quantum leaps in quality as well as quantity on 69 Love Songs. This incarnation of the band doesn't feature much of the densely layered, burbling electro-pop that they're best known for; in its stead are sparser, more acoustic songs that sound as if they're being played on actual instruments by a group of actual musicians (as opposed to Merritt himself playing mad scientist with effects racks and overdubs). It may initially seem like this stylistic decision came due to budget restrictions-- if you're recording that many songs, you can't blow too much money on any one track. But it's probably more likely that Merritt finally realized the limits of tinny synths and drum machines."

User.create(username: "Gabe", password: "123")

#Artists
Artist.create(name: "Tool", genre: "metal")
Artist.create(name: "This Heat", genre: "experimental")
Artist.create(name: "The Magnetic Fields", genre: "folk")
Artist.create(name: "Starry Cat", genre: "folk")

#Albums
Album.create(title: "10,000 Days", img: "https://i2.wp.com/yourlastrites.com/wp-content/uploads/2017/07/tool10000days.jpg", artist_id: Artist.first.id)
Album.create(title: "Deceit", img: "https://f4.bcbits.com/img/a4219649774_10.jpg",  artist_id: Artist.second.id)
Album.create(title: "69 Love Songs", img: "https://upload.wikimedia.org/wikipedia/en/0/00/The_Magnetic_Fields_-_69_Love_Songs.jpg",  artist_id: Artist.third.id)
Album.create(title: "Starry Cat", img: "https://f4.bcbits.com/img/a1678638806_16.jpg",  artist_id: Artist.fourth.id)

#Reviews
Review.create(user_id: User.first.id, album_id: Album.first.id, rating: 8, review: "good", title: "10,000 Days", artist: "Tool", img: "https://i2.wp.com/yourlastrites.com/wp-content/uploads/2017/07/tool10000days.jpg" )
Review.create(user_id: User.first.id, album_id: Album.second.id, rating: 10, review: thisHeat, title: "Deceit", artist: "This Heat", img: "https://f4.bcbits.com/img/a4219649774_10.jpg")
Review.create(user_id: User.first.id, album_id: Album.third.id, rating: 9, review: theMagnetic, title: "69 Love Songs", artist: "The Magnetic Fields", img: "https://upload.wikimedia.org/wikipedia/en/0/00/The_Magnetic_Fields_-_69_Love_Songs.jpg")
Review.create(user_id: User.first.id, album_id: Album.fourth.id, rating: 8.9, review: "Something about it. idk.", title: "Starry Cat", artist: "Starry Cat", img: "https://f4.bcbits.com/img/a1678638806_16.jpg")

#comments
Comment.create(review_id: Review.first.id, user_id: User.first.id, comment: "First comment.")
