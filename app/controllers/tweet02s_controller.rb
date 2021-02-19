class Tweet02sController < ApplicationController
  before_action :set_tweet02, only: [:show, :edit, :update, :destroy]

  # GET /tweet02s
  # GET /tweet02s.json
  def index
    @tweet02s = Tweet02.all
  end

  # GET /tweet02s/1
  # GET /tweet02s/1.json
  def show
  end

  # GET /tweet02s/new
  def new
    @tweet02 = Tweet02.new
  end

  # GET /tweet02s/1/edit
  def edit
  end

  # POST /tweet02s
  # POST /tweet02s.json
  def create
    @tweet02 = Tweet02.new(tweet02_params)

    respond_to do |format|
      if @tweet02.save
        format.html { redirect_to @tweet02, notice: 'Tweet02 was successfully created.' }
        format.json { render :show, status: :created, location: @tweet02 }
      else
        format.html { render :new }
        format.json { render json: @tweet02.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet02s/1
  # PATCH/PUT /tweet02s/1.json
  def update
    respond_to do |format|
      if @tweet02.update(tweet02_params)
        format.html { redirect_to @tweet02, notice: 'Tweet02 was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet02 }
      else
        format.html { render :edit }
        format.json { render json: @tweet02.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet02s/1
  # DELETE /tweet02s/1.json
  def destroy
    @tweet02.destroy
    respond_to do |format|
      format.html { redirect_to tweet02s_url, notice: 'Tweet02 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet02
      @tweet02 = Tweet02.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet02_params
      params.require(:tweet02).permit(:body)
    end
end
