require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/eventcreator'

def event
julie=User.new("julie@gmai.com",32)
julie=User.new("julie2@gmail.com",22)
jean=User.new("jean@gmail.com",21)

puts User.all


a=Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

b=Event.new("2019-11-14 09:00", 30, "Americano", ["truc@machin.com", "bidule@chose.fr"])

c=Event.new("2019-10-14 15:50", 120, "Pomme de terre", ["truc@machin.com", "bidule@gmail.com"])

print "recorded date :"
puts a.show_itself

a.postpone_24h

print "date + 24h : "
puts a.show_itself

print "end date : "
puts a.end_date

print "is event past ? "
puts a.is_past

print "is event in futur ? "
puts b.is_futur

print "is event soon ? "
puts c.is_soon

puts a.to_s

print "find user : "
puts user_founded = User.find_by_email("jean@gmail.com")
puts jean.show_user
puts "Voici l'age de Jean #{user_founded.age}"


print "all event : "
puts Event.all


end



def bonus

	EventCreator.new

end

bonus
