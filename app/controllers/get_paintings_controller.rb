class GetPaintingsController < ApplicationController
def paintings
  @resp = Faraday.get('https://collectionapi.metmuseum.org/public/collection/v1/objects')
    body = JSON.parse(@resp.body)
    if @resp.success?
      @paintings = body.map{|painting|
        binding.pry
        {id: painting["id"],
        title: painting["title"],
        image: painting["image"],
        artist: painting["artist"],
        date: painting["date"],
      }
    }
      render json: @paintings
    else
      @error = body["meta"]["errorDetail"]
    end
  end

end
