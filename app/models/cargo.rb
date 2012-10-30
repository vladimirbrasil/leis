# == Schema Information
#
# Table name: cargos
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cargo < ActiveRecord::Base
  attr_accessible :content

  has_many :cargo_atribuicaos, foreign_key: "cargo_id", dependent: :destroy
  has_many :reverse_cargo_atribuicaos, class_name: :CargoAtribuicao
	has_many :atribuicaos, :through => :cargo_atribuicaos, :source => :atribuicao 

 	before_save { self.content = self.content.downcase.strip.gsub("  "," ") }
 	
end

# a = Atribuicao.find(775) # (find, create, etc...)
# c = Cargo.find_by_content("OPF") #(find, .create content: "  teste  Area9 "
# c.atribuicaos = [a]
# c.cargo_atribuicaos
