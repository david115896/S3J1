#require 'app.rb'

class User
	attr_accessor :email
	attr_accessor :age
	@@user_all=[]
	@@user_list=Array.new
	@@user_count=0

	def initialize(email_to_save,age_to_save)
		@email = email_to_save
		@age = age_to_save
		@@user_all << self.email
		@@user_list << self
	
	end
	
	def self.find_by_email(email_to_find)
		return @@user_list.find{|user| user.email==email_to_find}
	
	end
	
	def show_user
		return self.age
	end

	def self.all
	 return @@user_all
	end




end

