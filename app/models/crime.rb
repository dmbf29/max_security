class Crime < ApplicationRecord
  has_many :inmate_crimes, dependent: :destroy
  has_many :inmates, through: :inmate_crimes
  validates :name, presence: true

  # def to_label
  #   name.up
  # end
end
