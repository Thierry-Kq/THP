# write your code here

def who_is_bigger(x, y, z)
	if x == nil||y == nil||z == nil
		return "nil detected"
	else
		if x > y && x > z
			return "a is bigger"
		elsif y > x && y > z

			return "b is bigger"
		else z > x && z > y
			return "c is bigger"
		end
	end
end

def reverse_upcase_noLTA(str)
	str.reverse.upcase.tr("LTA", "")

end

def array_42(tab)
	tab.include?(42) 
end

def magic_array(tab)
	tab2 = tab.flatten.sort
	tab3 = tab2.map! {|x| x * 2}
	tab4 = tab3.delete_if{|x| x % 3 == 0 }
	tab4.uniq.sort
end


