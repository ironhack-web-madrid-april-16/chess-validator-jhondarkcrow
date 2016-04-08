#---------------------------------BISHOP-----------------------
class Bishop

 attr_reader :name, :w, :h, :num_piece, :color, :illegal
	def initialize(color, num_piece, w, h)
		@name = "Bishop"
		@w = w
		@h = h
		@num_piece = num_piece
		@color = color
		@illegal = true
	end

	def select_move
			puts "Move your #{@name} (FL/FR/BL/BR)"
			answer = gets.chomp.upcase
			case answer
			when 'FL'
				front_left_move
			when 'FR'
				back_move
			when 'BL'
				left_move
			when 'BR'
				right_move
			else 
				puts "Erroneous move"
				select_move
			end
		
	end
	def print_position
		puts "H:#{@h} W:#{@w} "
	end

	def front_left_move
		puts "#{@color} #{@name}#{@num_piece} where do you want to move"
		aux1  = gets.chomp.to_i
		aux2  = gets.chomp.to_i	
		if (aux1 > @h &&  aux1<8) && (aux2 < @w && aux2 >= 0)
			@h = aux1
			@w = aux2
		else
			puts "illegal move" 
			@illegal= false 
		end
		print_position
	end

	def back_left_move
		puts "#{@color} #{@name}#{@num_piece} where do you want to move"
		aux1 = gets.chomp.to_i
		aux	= gets.chomp.to_i
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
bishop=Bishop.new("white",1, 2,0)
bishop.select_move
