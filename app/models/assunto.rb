# == Schema Information
#
# Table name: assuntos
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assunto < ActiveRecord::Base
  attr_accessible :content
end
