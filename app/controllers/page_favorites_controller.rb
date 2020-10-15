class PageFavoritesController < ApplicationController

	def index
		@favorites = Favorite.all
	end
end
