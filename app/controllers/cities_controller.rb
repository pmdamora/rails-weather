class CitiesController < ApplicationController

  def create
    @city = City.new(city_params)
    
    respond_to do |format|
      if @result = @city.save
        format.html { redirect_to root_url }
        format.js
      else
        format.html { 
          @city.errors.full_messages.each do |msg|
            flash[:danger] = msg
          end
          redirect_to root_url
        }
        format.js
      end
    end
  end

  def destroy
  end

  private

    def city_params
      params.require(:city).permit(:name)
    end

end
