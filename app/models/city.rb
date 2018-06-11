require 'net/http'
require 'json'

class City < ApplicationRecord
  before_save { name.downcase! }
  validates :name, presence: true, uniqueness: { case_sensitive: false }, 
                   length: { maximum: 50 }
  # TODO: More sophisticated matching validation instead of length.
  validates :timezone, presence: true, length: { maximum: 50 }

  def dt
    tz = Timezone.fetch(timezone)
    tz.utc_to_local(Time.now)
  end

  # Retrieves the current temperature from the api
  def temperature
    api_key = Rails.application.credentials.open_weather_map[:api_key]

    # TODO: Change units based on locale
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{URI.encode(name)}&units=imperial&appid=#{api_key}")
    
    # Download and parse the JSON from the api
    res = JSON.parse(Net::HTTP.get(uri))
    res['main']['temp'].to_i
  end
end
