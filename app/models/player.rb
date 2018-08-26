class Player < ApplicationRecord

  belongs_to :team, dependent: :destroy

end
