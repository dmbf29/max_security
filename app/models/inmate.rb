class Inmate < ApplicationRecord
  CRIMES = %w(murder manslaughter genocide arson jaywalking)
  belongs_to :prison
  validates :name, presence: true
  validates :image_url, presence: true
  validates :crime, inclusion: { in: CRIMES}
end
