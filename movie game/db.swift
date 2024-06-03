import Foundation

// Define the Movie class conforming to Codable
class Movie: Codable {
    var title: String
    var year: String
    var director: String
    var description: String
    var score: Int
    var cast: String

    init(title: String, year: String, director: String, description: String, score: Int, cast: String) {
        self.title = title
        self.year = year
        self.director = director
        self.description = description
        self.score = score
        self.cast = cast
    }
}

// Create the movie instances with the cast property
let movie1 = Movie(title: "Inception", year: "2010", director: "Christopher Nolan", description: "A thief who steals corporate secrets through the use of dream-sharing technology.", score: 87, cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page")
let movie2 = Movie(title: "The Shawshank Redemption", year: "1994", director: "Frank Darabont", description: "Two imprisoned men bond over a number of years.", score: 91, cast: "Tim Robbins, Morgan Freeman, Bob Gunton")
let movie3 = Movie(title: "The Godfather", year: "1972", director: "Francis Ford Coppola", description: "The aging patriarch of an organized crime dynasty transfers control to his reluctant son.", score: 97, cast: "Marlon Brando, Al Pacino, James Caan")
let movie4 = Movie(title: "The Dark Knight", year: "2008", director: "Christopher Nolan", description: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc.", score: 94, cast: "Christian Bale, Heath Ledger, Aaron Eckhart")
let movie5 = Movie(title: "Pulp Fiction", year: "1994", director: "Quentin Tarantino", description: "The lives of two mob hitmen, a boxer, and a pair of diner bandits intertwine.", score: 92, cast: "John Travolta, Uma Thurman, Samuel L. Jackson")
let movie6 = Movie(title: "Schindler's List", year: "1993", director: "Steven Spielberg", description: "In German-occupied Poland during World War II, industrialist Oskar Schindler.", score: 98, cast: "Liam Neeson, Ralph Fiennes, Ben Kingsley")
let movie7 = Movie(title: "Fight Club", year: "1999", director: "David Fincher", description: "An insomniac office worker and a devil-may-care soap maker form an underground fight club.", score: 79, cast: "Brad Pitt, Edward Norton, Helena Bonham Carter")
let movie8 = Movie(title: "Forrest Gump", year: "1994", director: "Robert Zemeckis", description: "The presidencies of Kennedy and Johnson, the Vietnam War, and more through the eyes of Forrest Gump.", score: 71, cast: "Tom Hanks, Robin Wright, Gary Sinise")
let movie9 = Movie(title: "The Matrix", year: "1999", director: "Lana Wachowski, Lilly Wachowski", description: "A computer hacker learns about the true nature of his reality and his role in the war against its controllers.", score: 87, cast: "Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss")
let movie10 = Movie(title: "The Lord of the Rings: The Fellowship of the Ring", year: "2001", director: "Peter Jackson", description: "A meek Hobbit and eight companions set out on a journey to destroy the One Ring.", score: 91, cast: "Elijah Wood, Ian McKellen, Orlando Bloom")

// Store the instances in an array called movies
let movies: [Movie] = [movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10]
