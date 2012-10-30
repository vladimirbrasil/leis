# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ActiveRecord::Base
  attr_accessible :content

  # has_many :atribuicaos, foreign_key: "area_id", dependent: :destroy

  has_many :atribuicaos, foreign_key: "area_id", dependent: :destroy
  has_many :reverse_atribuicaos, class_name: :Atribuicao
	has_many :verbos, :through => :atribuicaos, :source => :verbo #. Is it one of :verbos or :areas?

	before_save { self.content = self.content.downcase.strip.gsub("  "," ") }

	validates :content, presence: true, length: { minimum: 2 }

end

# v = Verbo.create content: "  teste  Verbo9 "
# a = Area.create content: "  teste  Area9 "
# a.verbos = [v]
# a.atribuicaos