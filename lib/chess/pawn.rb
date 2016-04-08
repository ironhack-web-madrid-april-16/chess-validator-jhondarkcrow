
#---------------------------------PAWN-----------------------
class Pawn

 attr_reader :name, :w, :h, :num_piece, :color, :illegal
	def initialize(color, num_piece, h, w)
		@name = "Pawn"
		@w = w
		@h = h
		@num_piece = num_piece
		@color = color
		@illegal = true
	end

	def select_move
			puts "Move your #{@name} (F)"
			answer = gets.chomp.upcase
			case answer
			when 'F'
				front_move
			else 
				puts "Erroneous move"
				select_move
			end
		
	end
	def print_position
		puts "H:#{@h} W:#{@w} "
	end

	def front_move
		puts "#{@color} #{@name}#{@num_piece} where do you want to move"
		@h+=1
		if  @h<8
		else
			puts "illegal move" 
			@illegal= false 
			@h-=1
		end
		print_position
	end
end


pawn = Pawn.new("white", 1, 1, 0)
pawn.select_move