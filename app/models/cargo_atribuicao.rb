# == Schema Information
#
# Table name: cargo_atribuicaos
#
#  id            :integer          not null, primary key
#  cargo_id      :integer
#  atribuicao_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class CargoAtribuicao < ActiveRecord::Base
  attr_accessible :atribuicao_id, :cargo_id

  belongs_to :atribuicao
  belongs_to :cargo  
end
