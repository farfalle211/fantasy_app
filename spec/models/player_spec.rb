require 'rails_helper'

RSpec.describe Player, type: :model do

  context 'validation tests' do
    # it 'ensures name presence' do
    #   player = Player.new(name: "Joe", position: 0, team_id: 1).save
    #   expect(player).to eq(false)
    # end


    it 'should save successfully' do
      Team.new(name: "Raiders", city: "Oakland", division_id: 2, conference_id: 1).save!
      player = Player.new(name: "DeAndre Hopkins", position: 2, team_id: 1).save!
      expect(player).to eq(true)
    end
  end
end
