# == Schema Information
#
# Table name: verbos
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Verbo < ActiveRecord::Base
  attr_accessible :content

  has_many :atribuicaos, foreign_key: "verbo_id", dependent: :destroy
  has_many :reverse_atribuicaos, class_name: :Atribuicao
  has_many :areas, through: :atribuicaos, source: :area

	before_save { self.content = self.content.downcase.strip.gsub("  "," ") }

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
