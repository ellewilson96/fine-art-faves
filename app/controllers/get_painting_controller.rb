class GetPaintingController < ApplicationController
def painting
  @resp = Faraday.get('https://collectionapi.metmuseum.org/public/collection/v1/objects/'+@painting.id)
    body = JSON.parse(@resp.body)
    if @resp.success?
      @painting = body
        {id: body["id"],
        title: body["title"],
        image: body["image"],
        artist: body["artist"],
        date: body["date"],
      }
      render json: @painting
    else
      @error = body["meta"]["errorDetail"]
    end
  end

end
