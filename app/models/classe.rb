# == Schema Information
#
# Table name: classes
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classe < ActiveRecord::Base
  attr_accessible :content

  has_many :classe_atribuicaos, foreign_key: "classe_id", dependent: :destroy
  has_many :reverse_classe_atribuicaos, class_name: :ClasseAtribuicao
	has_many :atribuicaos, :through => :classe_atribuicaos, :source => :atribuicao 

 	before_save { self.content = self.content.downcase.strip.gsub("  "," ") }
end

# a = Atribuicao.find(775) 
# aa = Atribuicao.find(776) 
# c = Classe.find_by_content("Especial") 
# c.atribuicaos = [a, aa]	
# c.classe_atribuicaos

# cc = Classe.find_by_content("2") 
# a.classes = [cc]	


