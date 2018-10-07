class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :first_name, presence: true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :last_name, presence: true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :occupation, presence: true,format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :dob, presence: true
  validates :prof_pic, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :comments, dependent: :destroy
 has_many :teches, dependent: :destroy
 has_one_attached :prof_pic
end
