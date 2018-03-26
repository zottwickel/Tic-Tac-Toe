$count = 0
class Space
	def initialize(spot,status)
		@name = spot
		@status = status
	end
	def name
		@name
	end
	def status
		@status
	end
	@changed = false
	def changed
		@changed
	end
	def x
			@status = "x"
			@changed = true
			$count += 1
	end
	def o
		@status = "o"
		@changed = true
		$count += 1
	end
end

$winstate = false
$tiestate = false

reset = Proc.new do
	$winstate = false
	$tiestate = false
	@a = Space.new("A"," ")
	@b = Space.new("B"," ")
	@c = Space.new("C"," ")
	@d = Space.new("D"," ")
	@e = Space.new("E"," ")
	@f = Space.new("F"," ")
	@g = Space.new("G"," ")
	@h = Space.new("H"," ")
	@i = Space.new("I"," ")
end

board = Proc.new do
	puts "Tic Tac Toe!



Layout:     |Your Board:
 A | B | C  | #{@a.status} | #{@b.status} | #{@c.status} 
---+---+--- |---+---+---
 D | E | F  | #{@d.status} | #{@e.status} | #{@f.status} 
---+---+--- |---+---+---
 G | H | I  | #{@g.status} | #{@h.status} | #{@i.status} 
 

 "
end

gameplay_one = Proc.new do
	board.call
	puts "Player one (x), your turn! (put the letter you want to mark)"
	@choice = gets.chomp.downcase
	case @choice
	when "a"
		if @a.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@a.x
		end
	when "b"
		if @b.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@b.x
		end
	when "c"
		if @c.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@c.x
		end
	when "d"
		if @d.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@d.x
		end
	when "e"
		if @e.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@e.x
		end
	when "f"
		if @f.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@f.x
		end
	when "g"
		if @g.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@g.x
		end
	when "h"
		if @h.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@h.x
		end
	when "i"
		if @i.status != " "
			system 'clear'
			puts "ERROR! please choose a free space."
			gameplay_one.call
		else
			@i.x
		end
	else
		system 'clear'
		puts "ERROR! please put a-i."
		gameplay_one.call
	end
end
gameplay_two = Proc.new do
	board.call
	puts "Player two (o), your turn! (put the letter you want to mark)"
	@choice = gets.chomp.downcase
	case @choice
	when "a"
		if @a.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@a.o 
		end
	when "b"
		if @b.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@b.o 
		end
	when "c"
		if @c.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@c.o 
		end
	when "d"
		if @d.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@d.o 
		end
	when "e" 
		if @e.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@e.o 
		end
	when "f"
		if @f.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@f.o 
		end
	when "g"
		if @g.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@g.o 
		end
	when "h"
		if @h.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@h.o 
		end
	when "i"
		if @i.status != " "
			system 'clear'
			puts "ERROR! Please choose a free space."
			gameplay_two.call
		else
			@i.o 
		end
	else
		system 'clear'
		puts "ERROR! please put a-i"
		gameplay_two.call
	end
end

wincheck = Proc.new do
	#Vertical wins
	if (@a.status == @d.status && @d.status == @g.status && @a.changed)
		$winstate = true
	elsif (@b.status == @e.status && @e.status == @h.status && @h.changed)
		$winstate = true
	elsif (@c.status == @f.status && @f.status == @i.status && @i.changed)
		$winstate = true
	#Horizontal wins
	elsif (@a.status == @b.status && @b.status == @c.status && @c.changed)
		$winstate = true
	elsif (@d.status == @e.status && @e.status == @f.status && @f.changed)
		$winstate = true
	elsif (@g.status == @h.status && @h.status == @i.status && @i.changed)
		$winstate = true
	#Diagonal wins
	elsif (@g.status == @e.status && @e.status == @c.status && @c.changed)
		$winstate = true
	elsif (@a.status == @e.status && @e.status == @i.status && @i.changed)
		$winstate = true
	end
end

tiecheck = Proc.new do
	#Only two ties possible
	if (@d.status == @h.status && @d.status == @c.status && @c.changed)
		$tiestate = true
	elsif (@h.status == @f.status && @f.status == @a.status && @a.changed)
		$tiestate = true
	end
end

start = Proc.new do

	until $count === 10
		system 'clear'
		gameplay_one.call
		wincheck.call
		if $winstate
			x = false
			system 'clear'
			until x == true
				puts "

**************************************************
                    YOU WIN!!!!
**************************************************

"
				puts "Play again? (y/n)"
				@again = gets.chomp.downcase
				if @again == "y"
					x = true
					reset.call
					start.call
				elsif @again == "n"
					x = true
					exit
				else
					system 'clear'
					puts "ERROR! You must put y or n."
				end
			end
		end
		tiecheck.call
		if $tiestate
			y = false
			system 'clear'
			until y == true
				puts "

*************************************************
                 CAT'S GAME! (Tie)
*************************************************

"
				puts "Play again? (y/n)"
				@again = gets.chomp.downcase
				if @again == "y"
					y = true
					reset.call
					start.call
				elsif @again == "n"
					y = true
					exit
				else
					system 'clear'
					puts "ERROR! You must put y or n."
				end
			end
		end
		system 'clear'
		gameplay_two.call
		wincheck.call
		if $winstate
			x = false
			system 'clear'
			until x == true
				puts "

**************************************************
                    YOU WIN!!!!
**************************************************

"
				puts "Play again? (y/n)"
				@again = gets.chomp.downcase
				if @again == "y"
					x = true
					reset.call
					start.call
				elsif @again == "n"
					x = true
					exit
				else
					system 'clear'
					puts "ERROR! You must put y or n."
				end
			end
		end
		tiecheck.call
		if $tiestate
			y = false
			system 'clear'
			until y == true
				puts "

*************************************************
                 CAT'S GAME! (Tie)
*************************************************

"
				puts "Play again? (y/n)"
				@again = gets.chomp.downcase
				if @again == "y"
					y = true
					reset.call
					start.call
				elsif @again == "n"
					y = true
					exit
				else
					system 'clear'
					puts "ERROR! You must put y or n."
				end
			end
		end
	end
end

reset.call
start.call
