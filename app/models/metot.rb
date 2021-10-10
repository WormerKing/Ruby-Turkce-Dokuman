class Metot < ApplicationRecord
	belongs_to :sinif
	validates :name,uniqueness:{message:"Bu metot daha önceden oluşturulmuş"}
	validates_presence_of :name,:desc,:example,:sinif_id,message:"kısmı boş kalamaz !"
end
