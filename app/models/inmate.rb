class Inmate < ApplicationRecord
  # CRIMES = %w(murder manslaughter genocide arson jaywalking)
  belongs_to :prison
  has_many :inmate_crimes, dependent: :destroy
  has_many :crimes, through: :inmate_crimes
  validates :name, presence: true
  validates :image_url, presence: true
end
