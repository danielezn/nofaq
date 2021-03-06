class DoubtsController < ApplicationController
  before_action :set_doubt, only: [:show, :edit, :update, :destroy, :accept_offer]
  before_action :authenticate_user!

  # GET /doubts
  # GET /doubts.json
  def index
    @doubts = Doubt.public_status.where.not(user_id: current_user.id)
  end

  def mine
    @doubts = current_user.doubts
    respond_to do |format|
      format.html { render :index }
    end
  end

  # GET /doubts/1
  # GET /doubts/1.json
  def show
    @offer = Offer.new
  end

  # GET /doubts/new
  def new
    @doubt = Doubt.new
  end

  # GET /doubts/1/edit
  def edit
  end

  # POST /doubts
  # POST /doubts.json
  def create
    @doubt = current_user.doubts.new(doubt_params)

    respond_to do |format|
      if @doubt.save
        format.html { redirect_to @doubt, notice: 'Doubt was successfully created.' }
        format.json { render :show, status: :created, location: @doubt }
      else
        format.html { render :new }
        format.json { render json: @doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doubts/1
  # PATCH/PUT /doubts/1.json
  def update
    respond_to do |format|
      if @doubt.update(doubt_params)
        format.html { redirect_to @doubt, notice: 'Doubt was successfully updated.' }
        format.json { render :show, status: :ok, location: @doubt }
      else
        format.html { render :edit }
        format.json { render json: @doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doubts/1
  # DELETE /doubts/1.json
  def destroy
    @doubt.destroy
    respond_to do |format|
      format.html { redirect_to doubts_url, notice: 'Doubt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    binding.pry
    @doubts = Doubt.search params[:search_content]
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doubt
      @doubt = Doubt.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doubt_params
      params.require(:doubt).permit(:title, :description)
    end
end
