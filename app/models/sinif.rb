class Sinif < ApplicationRecord
	has_many :metots
	validates_presence_of :name,message:"kısmı boş kalamaz"
end
