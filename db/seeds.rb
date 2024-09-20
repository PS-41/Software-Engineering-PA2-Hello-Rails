# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'Kimi no Na wa', :rating => 'PG-13',
  :release_date => '26-Aug-2017', :description => 'Kimi no Na wa. (君の名は。 Your name.) is a 2016 Japanese anime romantic fantasy drama film directed, written, and edited by Makoto Shinkai, based on his own novel of the same name.'},
  {:title => 'Memento', :rating => 'R',
    :release_date => '20-Oct-2000', :description => 'Leonard Shelby, an insurance investigator, suffers from anterograde amnesia and uses notes and tattoos to hunt for the man he thinks killed his wife, which is the last thing he remembers.'},
  {:title => 'The Imitation Game', :rating => 'PG-13',
    :release_date => '29-Aug-2014', :description => 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians while attempting to come to terms with his troubled private life.'},
  {:title => 'Spider-Man 2', :rating => 'PG-13',
    :release_date => '25-Jun-2004', :description => 'Peter Parker is beset with troubles in his failing personal life as he battles a former brilliant scientist named Otto Octavius'}
]

more_movies.each do |movie|
  Movie.find_or_create_by!(movie)
end