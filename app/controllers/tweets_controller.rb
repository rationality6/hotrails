class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
  end

  def create
    room_id = { room_id: params[:room_id] }
    merged_params = tweet_params.merge(room_id)
    @tweet = Tweet.new(merged_params)
    @tweet.save

    # respond_to do |format|
    #   if @tweet.save
    #     format.html { redirect_to tweets_url, notice: 'Tweet was successfully created.' }
    #   else
    #     format.turbo_stream { render turbo_stream: turbo_stream.replace(@tweet, partial: "tweets/form", locals: { tweet: @tweet }) }
    #     format.html {
    #       render :index
    #     }
    #   end
    # end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to tweets_path, notice: 'Tweet was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweet_params
    params.require(:tweet).permit(:body, :content, images: [])
  end
end
