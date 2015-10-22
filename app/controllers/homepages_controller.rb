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
		binding.pry
		@equipments = Equipment.find_by_sql(sql)

		# @equipments = Equipment.select{|equ| equ.name.include?(params[:name])}
		render 'index'
	end

end