class Song

	def initialize(title, duration, genre)
		#Your code here
		@title = title
		@duration = duration
		@genre = genre
	end
end


# Create your 3 instances of the Song class here
song1 = Song.new("title1", "duration1", "genre1")
song2 = Song.new("title2", "duration2", "genre2")
song3 = Song.new("title3", "duration3", "genre3")

#Add your Album, Artist and BillboardTop10 classes below
class Album

	def initialize(title, release_date, songs)
		@title = title
		@release_date = release_date
		@songs = songs
	end

	def add_song(a_song)
		@songs.push(a_song)
	end

	def number_of_songs
		@songs.length
	end
end

album1 = Album.new("title1", "release_date1", [])
album2 = Album.new("title2", "release_date2", [])
album3 = Album.new("title3", "release_date3", [])

album1.add_song(song1)
album1.add_song(song2)
album1.add_song(song3)

class Artist
	def initialize(name, albums)
		@name = name
		@albums = albums
	end

	def add_album(an_album)
		@albums.push(an_album)
	end

	def number_of_albums
		@albums.length
	end
end

artist1 = Artist.new("name1", [])
artist2 = Artist.new("name2", [])

artist1.add_album(album1)

class BillboardTop10
	def initialize(year, artists)
		@year = year
		@artists = artists
	end

	def add_artist(an_artist)
		if @artists.length >= 10
			@artists.shift
		end
		@artists.push(an_artist)
	end

	def number_of_artists
		@artists.length
	end
end

top10 = BillboardTop10.new(2021, [])
