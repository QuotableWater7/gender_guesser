class Person < ActiveRecord::Base
	validates :gender, presence: true
	validates :weight, presence: true
	validates :height, presence: true
end
