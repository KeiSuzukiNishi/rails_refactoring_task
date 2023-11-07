class Player < ApplicationRecord
  belongs_to :club

  def age
    ((Time.zone.now  - birthday.to_time) / 1.year.seconds).floor
  end

  def self.average_age
    players = Player.all
    average_age = (players.sum(&:age) / players.length.to_f).to_f
  end
end
