Genre.create!([
  {name: "Action"},
  {name: "Comedy"},
  {name: "Romantic Comedy"}
])
Actor.create!([
  {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", gender: "male", age: 40, movie_id: 1},
  {first_name: "Carley", last_name: "Stroman", known_for: "Bloody World", gender: "female", age: 28, movie_id: 3},
  {first_name: "Rufus", last_name: "Emmerich", known_for: "The Electric Cat with a Thousand Faces", gender: "male", age: 70, movie_id: 5},
  {first_name: "Amparo", last_name: "Graham", known_for: "Blue Beast", gender: "male", age: 65, movie_id: 5},
  {first_name: "Rosina", last_name: "Flatley", known_for: "The Wizard from Jamaica Estates/Holliswood", gender: "female", age: 24, movie_id: 1},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 42, movie_id: 2},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 42, movie_id: 2},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 42, movie_id: 2},
  {first_name: "Clement", last_name: "Cassin", known_for: "I am Jungle", gender: "male", age: 42, movie_id: 3},
  {first_name: "Catherina", last_name: "Dare", known_for: "Je Vous Presente, Giovanna", gender: "female", age: 44, movie_id: 6},
  {first_name: "Mac", last_name: "Gusikowski", known_for: "Fake Man", gender: "male", age: 56, movie_id: 4},
  {first_name: "Barabara", last_name: "Cartwright", known_for: "The Tentacle Who Fell to Earth", gender: "female", age: 38, movie_id: 3},
  {first_name: "Rocco", last_name: "Wunsch", known_for: "Electric Pickpocket", gender: "male", age: 39, movie_id: 3},
  {first_name: "Les", last_name: "Schumm", known_for: "The Bloody World Who Fell to Earth", gender: "male", age: 57, movie_id: 1}
])
Movie.create!([
  {title: "Top Gun", year: 1986, plot: "As students at the United States Navy's elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.", director: "Tony Scott", english: true},
  {title: "Anchorman", year: 2004, plot: "Ron Burgundy is San Diego's top-rated newsman in the male-dominated broadcasting of the 1970s, but that's all about to change for Ron and his cronies when an ambitious woman is hired as a new anchor.", director: "Adam McKay", english: false},
  {title: "Role Models", year: 2008, plot: "Wild behavior forces a pair of energy drink reps to enroll in a Big Brother program.", director: "Director A", english: true},
  {title: "Minority Report", year: 2002, plot: "In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.", director: "Director A", english: true},
  {title: "Tommy Boy", year: 1995, plot: "After his auto-parts tycoon father dies, the overweight, underachieving son teams up with a snide accountant to try and save the family business.", director: "Director A", english: true},
  {title: "Inception", year: 2010, plot: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.", director: "Director A", english: true},
  {title: "Fever Pitch", year: 2005, plot: "Lindsay is stuck in the middle of her relationship with Ben and his passion for the Boston Red Sox.", director: "Director A", english: true}
])
MovieGenre.create!([
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 2},
  {genre_id: 1, movie_id: 3},
  {genre_id: 2, movie_id: 4},
  {genre_id: 1, movie_id: 5},
  {genre_id: 3, movie_id: 6},
  {genre_id: 1, movie_id: 11},
  {genre_id: 2, movie_id: 1}
])
User.create!([
  {name: "Guy", email: "Guy@example.com", password_digest: "$2a$12$720XZUMSwKPM5JlAj3Sziu/c0ZTuQCpHKUnvOyhIEs.W2BW5Rp3im", admin: false},
  {name: "Gal", email: "Gal@example.com", password_digest: "$2a$12$.fwzR9r5GL9qO/J5cUObXuPtkvd8tnotG40j01C8H/YnGI1vVALZG", admin: true}
])
