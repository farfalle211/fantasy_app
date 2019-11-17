class Team < ApplicationRecord
  belongs_to :division
  belongs_to :conference
  has_many :players
end
