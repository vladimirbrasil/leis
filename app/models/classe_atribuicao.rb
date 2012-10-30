# == Schema Information
#
# Table name: classe_atribuicaos
#
#  id            :integer          not null, primary key
#  classe_id     :integer
#  atribuicao_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ClasseAtribuicao < ActiveRecord::Base
  attr_accessible :atribuicao_id, :classe_id

  belongs_to :atribuicao
  belongs_to :classe  
end
