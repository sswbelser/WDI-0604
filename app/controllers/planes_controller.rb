class PlanesController < ApplicationController

	def index
		@planes = Plane.all
		render :index
	end

	def new
		render :new
	end

	# POST /planes
	def create
		# new plane data from form
		plane_params = params.require(:plane).permit(:name, :design, :description)

		# create new plane in db
		plane = Plane.create(plane_params)

		# redirect to plane's show page
		redirect_to "/planes/#{plane.id}"
	end

	# GET /planes/:id
	def show
		# set id from url params
		plane_id = params[:id]

		# find plane in db by its id
		@plane = Plane.find(plane_id)

		# render show view
		render :show
	end

	def edit
		# set id from url params
		plane_id = params[:id]

		# find plane in db by its id
		@plane = Plane.find(plane_id)

		render :edit
	end

	# PUT /planes/:id
	def update
		# set id from url params
		plane_id = params[:id]

		# find plane in db by its id
		db_plane = Plane.find(plane_id)

		# updated plane data from form
		plane_params = params.require(:plane).permit(:name, :design, :description)

		# update the plane in db
		db_plane.update_attributes(plane_params)

		# redirect to plane's show page
		redirect_to "/planes/#{db_plane.id}"
	end

	def destroy
		# set id from url params
		plane_id = params[:id]

		# find plane in db by its id
		db_plane = Plane.find(plane_id)

		# delete plan in db
		db_plane.destroy

		#redirect to main page
		redirect_to "/planes"
	end
end