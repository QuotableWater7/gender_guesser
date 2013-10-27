class GuessController < ApplicationController
  def index
  end

  def prediction
  	@prediction = 'male'
  	@males = Person.where(:gender => 'm')
  	@females = Person.where(:gender => 'f')

  	total_male_height = 0
  	total_male_weight = 0
  	total_female_height = 0
  	total_female_weight = 0

  	@males.each do |m|
  		total_male_height += m.height
  		total_male_weight += m.weight
  	end

  	@females.each do |f|
  		total_female_height += f.height
  		total_female_weight += f.weight
  	end

  	weight = params[:weight].to_i
  	height = params[:height].to_i

  	@male_dist = (total_male_weight/@males.length - weight).abs + (total_male_height/@males.length - height).abs*2.36
  	@female_dist = (total_female_weight/@females.length - weight).abs + (total_female_height/@females.length - height).abs*1.79

  	if @male_dist > @female_dist
  		@prediction = 'female'
  	end
  end
end
