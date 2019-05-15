class SightingsController < ApplicationController
    def index
      @sightings = Sighting.all
      render json: SightingSerializer.new(@sightings).to_serialized_hash
    end
  
    def show
      @sighting = Sighting.find(params[:id])
      render json: SightingSerializer.new(@sighting).to_serialized_hash
    end
  end