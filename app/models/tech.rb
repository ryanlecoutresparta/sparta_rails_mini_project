class Tech < ApplicationRecord
  belongs_to :user
  has_one_attached :logo
  has_many :comments, dependent: :destroy
end
