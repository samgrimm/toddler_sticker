class StickersController < ApplicationController
  before_action :set_sticker, only: [:show, :edit, :update, :destroy]

  # GET /stickers
  # GET /stickers.json
  def index
    @stickers = Sticker.all
  end

  # GET /stickers/1
  # GET /stickers/1.json
  def show
  end

  # GET /stickers/new
  def new
    @sticker = Sticker.new
  end

  # GET /stickers/1/edit
  def edit
  end

  # POST /stickers
  # POST /stickers.json
  def create
    @sticker = Sticker.new(sticker_params)

    respond_to do |format|
      if @sticker.save
        format.html { redirect_to @sticker, notice: 'Sticker was successfully created.' }
        format.json { render :show, status: :created, location: @sticker }
      else
        format.html { render :new }
        format.json { render json: @sticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stickers/1
  # PATCH/PUT /stickers/1.json
  def update
    respond_to do |format|
      if @sticker.update(sticker_params)
        format.html { redirect_to @sticker, notice: 'Sticker was successfully updated.' }
        format.json { render :show, status: :ok, location: @sticker }
      else
        format.html { render :edit }
        format.json { render json: @sticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stickers/1
  # DELETE /stickers/1.json
  def destroy
    @sticker.destroy
    respond_to do |format|
      format.html { redirect_to stickers_url, notice: 'Sticker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sticker
      @sticker = Sticker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sticker_params
      params.require(:sticker).permit(:icon, :rating, :goal_id)
    end
end
