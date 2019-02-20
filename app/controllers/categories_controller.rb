class CategoriesController < ApplicationController
	def show
		@category = Category.find(params[:id])	
		@rosters = Roster.where(category_id: params[:id])
	end
end
