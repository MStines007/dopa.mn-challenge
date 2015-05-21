class PlacesController < ApplicationController

  def index
    postal_code = Place.postal_code_default(place_params[:postal_code])
    limit = Place.limit_default(place_params[:limit])

    @places = Place.get_venue_objects_collection_at_location(postal_code, limit)

    respond_to do |format|
      format.json { render :index, status: ok }
      format.html { render :index }
    end
  end

  def home
  end

  private

  def places_params
    params.permit(:postal_code, :limit)
  end

end
