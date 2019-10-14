

class EventCreator
	attr_accessor :start_date, :duration, :title, :attendees
	@@all_events=Array.new

	def initialize
	puts "Salut, tu veux créer un événement ? Cool !"
	puts "Commençons. Quel est le nom de l'événement ?"
	print ">"
       	@title = gets.chomp
	puts "Super. Quand aura-t-il lieu ?"
	print ">"
       	@start_date = Time.parse(gets.chomp)
	puts"Au top. Combien de temps va-t-il durer (en minutes) ?"
	print">"
	@duration = gets.chomp.to_i
	puts "Génial. Qui va participer ? Balance leurs e-mails"
	print ">"
       	@attendees=gets.chomp
	puts"Super, c'est noté, ton évènement a été créé !	"
	
	end


end
