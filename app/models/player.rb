class Player < ApplicationRecord
  validates :name, presence: true

  belongs_to :team
  has_many :updates
end

#use .valid?