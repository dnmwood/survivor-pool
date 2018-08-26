class Team < ApplicationRecord

  belongs_to :owner
  has_many :players, dependent: :destroy

end
