class RostersController < ApplicationController
	before_action :authenticate_user!
	
	def index
		# トップページが呼ばれた時に動作するアクション
		@rosters = Roster.all
	end
	
	def new
		# 新規作成ページが呼ばれた時に動作するアクション
		@categories = Category.all
	end

	def create
		# 新しいメモがフォームからposｔされた時に動作するアクション
		Roster.create(last:params["rosters"]["last"],first:params["rosters"]["first"],tel:params["rosters"]["tel"],category_id:params["rosters"]["category_id"])
		redirect_to"/"
	end
	
	def destroy
		roster = Roster.find(params["id"])
		roster.destroy
		redirect_to "/"
	end
	
	def edit
		@roster = Roster.find(params["id"])
	end

	def update
		roster = Roster.find(params["id"])
		roster.last = params["rosters"]["last"]
		roster.first = params["rosters"]["first"]
		roster.tel = params["rosters"]["tel"]
		roster.category_id = params["rosters"]["category_id"]
		roster.save
		redirect_to "/"
	end
end


