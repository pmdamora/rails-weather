module CitiesHelper
  # Retrieves the current temperature from the api
  def temperature(name)
    res = City.get_weather(name)
    res['main']['temp'].to_i
  end

  # Retrieves the forecast temperature from the api
  def forecast(name)
    res = City.get_weather(name, "forecast")

    unless res['list'].nil?
      temps = []
      res['list'][0, 3].each do |data|
        temps << data['main']['temp'].to_i
      end
      
      # TODO: Make a loop and add date time tooltips
      content_tag(:h4, temps[0]) + content_tag(:h5, temps[1]) + content_tag(:h6, temps[2])
    end
  end

  # Return the datetime in the appropriate timezone
  def dt(timezone, time="now")
    unless timezone.nil?
      tz = Timezone.fetch(timezone)
      if time == "now"
        return tz.utc_to_local(Time.now)
      end
      return tz.utc_to_local(Time.now)
    end
    return Time.now
  end

  # Returns a name that can be used as a css id
  def css_id(name)
    name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end
