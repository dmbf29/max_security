class InmateCrime < ApplicationRecord
  belongs_to :inmate
  belongs_to :crime
  validates_uniqueness_of :crime, scope: :inmate
end
