#---------------------------------BISHOP-----------------------
class Knight

 attr_reader :name, :w, :h, :num_piece, :color, :illegal
	def initialize(color, num_piece, w, h)
		@name = "Knight"
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
		h = @h
		w = @w
		if (aux1 == h+=1 )&& (w-=2 >=0)
			@h = h+=1
			@w = w-=2
		elsif (aux1 == h+=2) && (w-=1 >=0)
			@h = h+=2
			@w = w-=1
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
knight=Knight.new("white",1, 6,0)
knight.select_move