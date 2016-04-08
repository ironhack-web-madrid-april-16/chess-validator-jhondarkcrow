
#---------------------------------ROOK-----------------------
class Rook

 attr_reader :name, :w, :h, :num_piece, :color, :illegal
	def initialize(color, num_piece, w, h)
		@name = "Rook"
		@w = w
		@h = h
		@num_piece = num_piece
		@color = color
		@illegal = true
	end

	def select_move
			puts "Move your #{@name} (F/B/L/R)"
			answer = gets.chomp.upcase
			case answer
			when 'F'
				front_move
			when 'B'
				back_move
			when 'L'
				left_move
			when 'R'
				right_move
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
		aux=gets.chomp.to_i	
		if aux > @h &&  aux<8
			@h = aux
		else
			puts "illegal move" 
			@illegal= false 
		end
		print_position
	end

	def back_move
		puts "#{@color} #{@name}#{@num_piece} where do you want to move"
		aux=gets.chomp.to_i	
		if aux <@h  && aux >= 0
			@h = aux
		else
			puts "illegal move"	
			@illegal= false 
		end
		print_position
	end
	def left_move
		puts "#{@color} #{@name}#{@num_piece} where do you want to move"
		aux=gets.chomp.to_i	
		if aux <=@w  && aux >= 0
			@h = aux
		else
			puts "illegal move"
			@illegal= false 	
		end
		print_position
	end
	def right_move
		puts "#{@color} #{@name}#{@num_piece}, #{@h},#{@w} , where do you want to move"
		aux=gets.chomp.to_i	
		if aux >@w  && aux < 8
			@h = aux
		else
			puts "illegal move"
			@illegal= false 	
		end
		print_position
	end
end


rook = Rook.new("white", 1, 0, 0)

