require 'open-uri'
require 'active_record/fixtures'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.delete_all
open("db/dados/atribuicoes_areas.txt") do |areas|
  areas.read.each_line do |area|
    content = area.chomp.downcase
    if content 
    	content.strip!
    	Area.find_or_create_by_content(content)
    end
  end
end

Verbo.delete_all
open("db/dados/atribuicoes_verbos.txt") do |verbos|
  verbos.read.each_line do |verbo|
    content = verbo.chomp.downcase
    if content 
    	content.strip!
	    Verbo.find_or_create_by_content(content)
	  end
  end
end

Atribuicao.delete_all
open("db/dados/atribuicoes_verbos_areas.txt") do |atribuicoes|
  atribuicoes.read.each_line do |atribuicao|
    atribuicao.downcase! if atribuicao
  	verbos, area = atribuicao.chomp.split("|")
		verbos.gsub!(" e ", ", ")
    if area
	    area.strip!
	    @area = Area.find_by_content(area)
	  	verbos.split(",").each do |verbo|
		    if verbo
		  		verbo.strip!
		  		if @area
		  			@verbo = Verbo.find_by_content(verbo)
		        Atribuicao.find_or_create_by_verbo_id_and_area_id(@verbo.id, @area.id) if @area and @verbo
		  		end
		  	end
	  	end	
	  end
  end
end
