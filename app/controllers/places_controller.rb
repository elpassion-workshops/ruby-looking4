class PlacesController < ApplicationController
  API_KEY = 'AIzaSyAP1vwxyCM--MERNqLnncKfDUsx9YfqvTQ'

  def index
    @address = params[:address]

    if @address.present?
      coords  = Geocoder.coordinates(@address)
      @places = google_places_client.spots(coords.first, coords.second, keyword: params[:keyword])
    end
  end

  private

  def google_places_client
    @google_places_client ||= GooglePlaces::Client.new(API_KEY)
  end

end
