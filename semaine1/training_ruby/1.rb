def my_pyra(stage)
	space = stage - 1
	diese = 1
	while stage > 0
		space.times do
			print " "
		end		
		diese.times do
			print "#"
		end
		diese += 2
		space -= 1
		stage -= 1
		puts ""
	end



end















print "Combien d etages pour ta pyramide? >>"
pyra = gets.chomp.to_i


my_pyra(pyra)