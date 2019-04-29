class ArtworkSharesController < ApplicationController


    def create
        @artworkshare = ArtworkShares.new(artwork_params)
        #artwork.new(params) is mass assignment. This is bad. Don't do this
        if @artworkshare.save
            render json: @artworkshare
        else 
            render json: @artworkshare.errors.full_messages, status: 422
        end
    end

    def destroy
        @artworkshare = ArtworkShares.find(params[:id])
        @artworkshare.destroy
        render json: @artworkshare 
    end

    private

    def artwork_params
        params.require(:artwork).permit(:artist_id, :viewer_id)
    end

end