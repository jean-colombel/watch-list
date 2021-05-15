require 'open-uri'
require 'json'

puts 'Cleaning the database...'
Movie.destroy_all

puts 'Fetching top rated movies...'
url = 'http://tmdb.lewagon.com/movie/top_rated'
json = open(url).read
movies = JSON.parse(json)['results']

puts 'Adding movies to the database'
movies.each_with_index do |movie, index|
  movie_title = movie['title']
  puts "#{index}. #{movie_title}"
  movie_overview = movie['overview']
  movie_poster = "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
  Movie.create!(title: movie_title,
                overview: movie_overview,
                postser_url: movie_poster)
end

puts 'All done!'
