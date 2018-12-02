# class SearchMovie
#   require 'dotenv'
#   # require 'rubygems'
#   # require 'nokogiri'
#   # require 'open-uri' 

#   Dotenv.load

#     def perform
#       Tmdb::Api.key(ENV['TEST'])
#       puts Tmdb::Movie.find(550)
#     end
#   end

class SearchMovie

require 'dotenv'


Dotenv.load

  def initialize(string)
    @string = string
    @result = Hash.new

  end

  def perform
    Tmdb::Api.key(ENV['TEST'])

    @movies = Tmdb::Movie.find(@string)

    @movies.each_with_index do |movie, index|
      if index == 20
        break
      end

      name = movie.title
      release = movie.release_date

      crew = Tmdb::Movie.credits(movie.id)["crew"]
      director = ""
      crew.each do |person|
        if person["job"]=="Director"
          director = person["name"]
        end
      end
      if director == ""
        director = "=== inconnu ==="
      end


      @result[movie.id] = {name: name, release_date: release, director: director}
    end
    return @result
  end
end