class Area < ActiveRecord::Base
  attr_accessible :content

  has_many :atribuicaos, foreign_key: "area_id", dependent: :destroy

	before_save { self.content.downcase! }

	validates :content, presence: true, length: { minimum: 2 }

end
