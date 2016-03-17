class Shop < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode

	scope :in_circle, ->(point, distance) { near(point, distance, :units => km)}
	scope :nearest,   ->(point,number)    { near(point, 100, units => km).limit(number)}

	def full_adress
		"#{address} #{zip} #{city}"
	end
end
