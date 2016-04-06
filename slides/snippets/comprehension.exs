data = [
  %{movie: "Batman v Superman", rating: 7, director: "Zack Snyder"},
  %{movie: "BFG", rating: 10, director: "Steven Spielberg"},
  %{movie: "The Force Awakens", rating: 9, director: "J.J. Abrahms"}
]

for movie <- data,
    movie.rating > 7,
    do: IO.puts "Great movie #{inspect movie}"
