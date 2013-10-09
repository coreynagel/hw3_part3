class Movie < ActiveRecord::Base

	def self.get_all_ratings
		ratings = Array.new
		Movie.all.each do |movie|
			if not ratings.include?(movie.rating)
				ratings.push(movie.rating)
			end
		end
		return ratings.sort
	end
end
