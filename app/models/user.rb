class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :comments, dependent: :destroy
 has_many :teches, dependent: :destroy
 has_one_attached :prof_pic
end
