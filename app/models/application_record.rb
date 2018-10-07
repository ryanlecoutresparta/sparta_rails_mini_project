class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :first_name, presence: true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :last_name, presence: true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :occupation, presence: true,format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :dob, presence: true
  validates :prof_pic, presence: true
end
