module Admin::PreferencesHelper
	def sort_order_options
		['ASC', 'DESC']
	end

	def set_sort_order(order)
		if order == 'ASC'
			Artist.all.sort!
		else
			Artist.all.sort! { |x,y| y <=> x }
		end
	end

	def access_permission(affermation)
		if affermation == 'YES'
			true
		else
			false
		end
	end

	def affirmations
		['YES', 'NO']
	end


end
