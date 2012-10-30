# == Schema Information
#
# Table name: atts
#
#  id         :integer          not null, primary key
#  area       :text
#  v1         :string(255)
#  v2         :string(255)
#  v3         :string(255)
#  v4         :string(255)
#  v5         :string(255)
#  v6         :string(255)
#  v7         :string(255)
#  v8         :string(255)
#  v9         :string(255)
#  apf        :boolean
#  epf        :boolean
#  ppf        :boolean
#  opf        :boolean
#  dpf        :boolean
#  pcf        :boolean
#  clesp      :boolean
#  cl1        :boolean
#  cl2        :boolean
#  cl3        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Att < ActiveRecord::Base
  attr_accessible :apf, :area, :cl1, :cl2, :cl3, :clesp, :dpf, :epf, :opf, :pcf, :ppf, :v1, :v2, :v3, :v4, :v5, :v6, :v7, :v8, :v9
end
