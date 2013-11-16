=begin
Challenge from Chris Pine's Learn to Program book:

 Orange tree. Make an OrangeTree class that has a height method that returns its height and a one_year_passes method that, when called, ages the tree one year. Each year the tree grows taller (how- ever much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees...whatever you think makes the most sense. And, of course, you should be able to count_the_oranges (which returns the number of oranges on the tree) and pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure any oranges you don’t pick one year fall off before the next year.	

=end


class OrangeTree

	def initialize
		puts "You have planted an Orange tree. Time to let it grow!"
		@size = 0
		@age = 0
		@oranges = 0
	end

	def status
		puts "The tree is currently #{@size} feet tall."
		puts "The tree is currently #{@age} years old."
		puts "There are currently #{@oranges} oranges."
	end

	def one_year_passes

		@age += 1
		@oranges = 0

		if @age == 10
			puts "The tree turned 10 years old and sadly it has died."
			exit
		elsif @age >= 2
			@oranges += rand(10..50)
			@size += rand(5..10)
		else
			@oranges += rand(5..15)
			@size += 2
		end

		puts "The tree has aged one year and all the unpicked oranges fell off." 
		puts "It's now #{@age} years old, #{@size} feet tall and has grown #{@oranges} new oranges."

	end

	def pick_oranges(amount)
		if amount >= @oranges
			puts "There aren't that many oranges left. Try again"
		else 
			@oranges -= amount
			puts "You picked #{amount} oranges. They were delicious."
			puts "There are now #{@oranges} oranges left on the tree."
		end		
	end

end

tree = OrangeTree.new

tree.status
puts "-------------"
tree.one_year_passes
puts "-------------"
tree.pick_oranges(5)
