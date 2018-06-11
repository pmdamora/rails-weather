class CitiesController < ApplicationController

  def create
    # Lookup the correct timezone based on the latitude and longitude.
    # timezone = Timezone.lookup(res['coord']['lat'], res['coord']['lon'])
  end

  def destroy
  end

end
