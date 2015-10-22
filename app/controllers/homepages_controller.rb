class HomepagesController < ApplicationController

	def index
		@equipments = Equipment.all
	end

	def search
		sql = "SELECT * FROM equipment WHERE "
		where = ""

		if params[:name] != ""
			where += "name LIKE '%" + params[:name] + "%' AND "
		end
		if params[:item] != ""
			where += "item LIKE '%" + params[:item] + "%' AND "
		end

		if where != ""
			where = where.first(where.length - 5)
			sql += where
		else
			sql = sql.first(sql.length - 7)
		end
		
		@equipments = Equipment.find_by_sql(sql)

		render 'index'
	end

	# Action click on the button "buy"
	def addBasket
		# si pas de panier -> création d'un panier
		basket = Basket.new(user_id: current_user.id)
		# binding.pry
		if basket.save
			# ajout de l'article au panier
			# binding.pry
			order = Order.new(basket_id: basket.id, equipment_id: params[:id])
			if order.save
				redirect_to baskets_path, :method => :get
			else
				render 'homepages#index'
			end
		else
			# binding.pry
			render 'homepages#index'
		end
	end

end