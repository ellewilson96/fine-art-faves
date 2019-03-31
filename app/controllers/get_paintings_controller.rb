class GetPaintingsController < ApplicationController
def paintings
    @resp = Faraday.get 'https://collectionapi.metmuseum.org/public/collection/v1/search?q=painting
'
    body = JSON.parse(@resp.body)
    if @resp.success?

      @paintings = body.map{|painting|

        {id: painting["objectID"],
        title: painting["title"],
        image: painting["primaryImage"],
        artist: painting["artistDisplayName"],
        date: painting["objectDate"],
      }}
      render json: @paintings
    else
      @error = body["meta"]["errorDetail"]
    end

  end

end
