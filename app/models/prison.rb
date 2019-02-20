class Prison < ApplicationRecord
  has_many :inmates
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
