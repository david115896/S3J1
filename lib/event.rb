require 'time'
require 'pry'

class Event
	attr_accessor :start_date, :duration, :title, :attendees
	@@all_events=Array.new

	def initialize(start_date, duration, title, attendees)
		@start_date = Time.parse(start_date)
		@duration = duration*60
		@title = title
		@attendees = attendees
		@@all_events << self.title
	end
	
	def postpone_24h
		@start_date = (@start_date + 86400)
	end
	
	def is_past
		return (@start_date<Time.now)? true : false
	end
	
	def is_futur
		return (@start_date>Time.now)? true : false
	end

	def to_s
		puts "Titre :  #{@title}"
		puts "Date de debut : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
		puts "Duree : #{@duration/60} minutes"
		puts "Invites : #{ @attendees}"
	end

	def is_soon
		time=Time.now
		return (@start_date.between?(time-1800, time))
	end

	def end_date
		return @start_date+@duration
	end

	def show_itself
		puts self.start_date
	end

	def self.all
		return @@all_events 
	end
end

#binding.pry

