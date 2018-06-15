require 'net/http'
require 'json'

class City < ApplicationRecord
  before_save   :downcase_name 
  before_create :add_timezone
  validates :name, presence: true, uniqueness: { case_sensitive: false }, 
                   length: { maximum: 50 }

  class << self
    # Retrieves the weather json
    def get_weather(name, type="weather")
      api_key = Rails.application.credentials.open_weather_map[:api_key]

      # TODO: Change units based on locale
      uri = URI("http://api.openweathermap.org/data/2.5/#{type}?q=#{URI.encode(name)}&units=imperial&appid=#{api_key}")
    
      # Download and parse the JSON from the api
      res = JSON.parse(Net::HTTP.get(uri))
    end
  end

  private

  # Converts city name to all lower-case.
  def downcase_name
    name.downcase!
  end

  # Lookup the correct timezone based on the latitude and longitude.
  def add_timezone
    res = City.get_weather(name)

    begin
      self.timezone = Timezone.lookup(res['coord']['lat'], res['coord']['lon']).name
    rescue Timezone::Error::Base => e
      puts "Timezone Error: #{e.message}"
    end
  end

end
