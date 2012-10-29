class Verbo < ActiveRecord::Base
  attr_accessible :content

  has_many :atribuicaos, foreign_key: "verbo_id", dependent: :destroy

	before_save { self.content.downcase! }

	validates :content, presence: true, length: { minimum: 2 }

  def seguindo?(area)
    atribuicaos.find_by_area_id(area.id)
  end

  def seguir!(area)
    atribuicaos.find_or_create_by_area_id!(area.id)
  end  

  def retirar!(area)
    atribuicaos.find_by_area_id(area.id).destroy
  end  

end
