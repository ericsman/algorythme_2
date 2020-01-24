def day_trader(tab)
	gain = 0
	tab_vente = Array.new

	tab.each do |x|
		for i in (tab.index x)...tab.length
			if tab[i] - x > gain
				gain = tab[i] - x
				tab_vente = [(tab.index x), i]
			end
		end
	end
	return tab_vente
end


print day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts " "