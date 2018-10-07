class Tech < ApplicationRecord
  validates :technology, presence: true
  validates :date_created, presence: true
  validates :version, presence: true
  validates :desc, presence: true
  validates :logo, presence: true
  belongs_to :user
  has_one_attached :logo
  has_many :comments, dependent: :destroy
end
