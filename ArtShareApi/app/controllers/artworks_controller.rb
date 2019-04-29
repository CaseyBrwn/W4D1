class ArtworksController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        @artworks = @user.artworks
        render json: @artworks
    end

    def show
        @artworks = Artwork.find(params[:id])
        render json: @artworks
    end

    def create
        @artwork = Artwork.new(artwork_params)
        #artwork.new(params) is mass assignment. This is bad. Don't do this
        if @artwork.save
            render json: @artwork
        else 
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end


    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        render json: @artwork 
    end

    private

    def artwork_params
        params.require(:artwork).permit(:artist_id, :title, :image_url)
    end

end
