class User < ApplicationRecord
	validates :username,:password,:superuser,presence:{message:" alanı boş bırakılamaz !"}
	validates :username,uniqueness:{message:"Bu kullanıcı daha önce oluşturulmuş !"} 
end
