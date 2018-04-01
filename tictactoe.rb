class Game
	attr_accessor :a, :b, :c, :d, :e, :f, :g, :h, :i, :string
	def initialize
		@a = " "
		@b = " "
		@c = " "
		@d = " "
		@e = " "
		@f = " "
		@g = " "
		@h = " "
		@i = " "
		@count = 0
	end
	def wincheck
		#Vertical wins
		if (@a == @d && @d == @g && @a != " ")
			return true
		elsif (@b == @e && @e == @h && @h != " ")
			return true
		elsif (@c == @f && @f == @i && @i != " ")
			return true
		#Horizontal wins
		elsif (@a == @b && @b == @c && @c != " ")
			return true
		elsif (@d == @e && @e == @f && @f != " ")
			return true
		elsif (@g == @h && @h == @i && @i != " ")
			return true
		#Diagonal wins
		elsif (@g == @e && @e == @c && @c != " ")
			return true
		elsif (@a == @e && @e == @i && @i != " ")
			return true
		else
			return false
		end
	end
	def player_one
		puts "Tic Tac Toe!



Layout:     |Your Board:
 A | B | C  | #{@a} | #{@b} | #{@c} 
---+---+--- |---+---+---
 D | E | F  | #{@d} | #{@e} | #{@f} 
---+---+--- |---+---+---
 G | H | I  | #{@g} | #{@h} | #{@i} 
 

 "
		puts "Player one (x), your turn! (put the letter you want to mark)"
		choice = gets.chomp.downcase
		case choice
		when "a"
			if @a != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@a = "x"
			end
		when "b"
			if @b != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@b = "x"
			end
		when "c"
			if @c != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@c = "x"
			end
		when "d"
			if @d != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@d = "x"
			end
		when "e"
			if @e != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@e = "x"
			end
		when "f"
			if @f != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@f = "x"
			end
		when "g"
			if @g != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@g = "x"
			end
		when "h"
			if @h != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@h = "x"
			end
		when "i"
			if @i != " "
				system 'clear'
				puts "ERROR! please choose a free space."
				player_one
			else
				@i = "x"
			end
		else
			system 'clear'
			puts "ERROR! please put a-i."
			player_one
		end
		@count += 1
		system "clear"
	end

	def player_two
		puts "Tic Tac Toe!



Layout:     |Your Board:
 A | B | C  | #{@a} | #{@b} | #{@c} 
---+---+--- |---+---+---
 D | E | F  | #{@d} | #{@e} | #{@f} 
---+---+--- |---+---+---
 G | H | I  | #{@g} | #{@h} | #{@i} 
 

 "
		puts "Player two (o), your turn! (put the letter you want to mark)"
		choice = gets.chomp.downcase
		case choice
		when "a"
			if @a != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@a = "o" 
			end
		when "b"
			if @b != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@b = "o" 
			end
		when "c"
			if @c != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@c = "o" 
			end
		when "d"
			if @d != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@d = "o" 
			end
		when "e" 
			if @e != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@e = "o" 
			end
		when "f"
			if @f != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@f = "o" 
			end
		when "g"
			if @g != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@g = "o" 
			end
		when "h"
			if @h != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@h = "o" 
			end
		when "i"
			if @i != " "
				system 'clear'
				puts "ERROR! Please choose a free space."
				player_two
			else
				@i = "o" 
			end
		else
			system 'clear'
			puts "ERROR! please put a-i"
			player_two
		end
		@count += 1
		system "clear"
	end

	def win?
		if wincheck
			puts "Tic Tac Toe!



Layout:     |Your Board:
 A | B | C  | #{@a} | #{@b} | #{@c} 
---+---+--- |---+---+---
 D | E | F  | #{@d} | #{@e} | #{@f} 
---+---+--- |---+---+---
 G | H | I  | #{@g} | #{@h} | #{@i} 
 

 "
			puts "

**************************************************
                    YOU WIN!!!!
**************************************************

"
			puts "Play again? (y/n)"
			again = gets.chomp.downcase
			if again == "y"
				load "tictactoe.rb"
			elsif again == "n"
				system "clear"
				exit
			else
				system "clear"
				puts "ERROR! Please put y or n" 
				win?
			end
		elsif @count == 9
			puts "Tic Tac Toe!



Layout:     |Your Board:
 A | B | C  | #{@a} | #{@b} | #{@c} 
---+---+--- |---+---+---
 D | E | F  | #{@d} | #{@e} | #{@f} 
---+---+--- |---+---+---
 G | H | I  | #{@g} | #{@h} | #{@i} 
 

 "
			puts "

**************************************************
                CAT'S GAME! (tie)
**************************************************

			"
			puts "Play again? (y/n)"
			again = gets.chomp.downcase
			if again == "y"
				load "tictactoe.rb"
			elsif again == "n"
				system "clear"
				exit
			else
				system "clear"
				puts "ERROR! Please put y or n" 
				win?
			end
		else
			return nil
		end
	end
end

game = Game.new
system "clear"
while 1
	game.player_one
	game.win?
	game.player_two
	game.win?
end