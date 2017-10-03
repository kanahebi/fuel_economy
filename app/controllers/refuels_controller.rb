class RefuelsController < ApplicationController
  before_action :set_refuel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /refuels
  # GET /refuels.json
  def index
    current_user
    @refuels = Refuel.all.order(refuel_date: :desc)
  end

  # GET /refuels/1
  # GET /refuels/1.json
  def show
  end

  # GET /refuels/new
  def new
    @refuel = Refuel.new
  end

  # GET /refuels/1/edit
  def edit
  end

  # POST /refuels
  # POST /refuels.json
  def create
    @refuel = Refuel.new(refuel_params)

    respond_to do |format|
      if @refuel.save
        format.html { redirect_to @refuel, notice: 'Refuel was successfully created.' }
        format.json { render :show, status: :created, location: @refuel }
      else
        format.html { render :new }
        format.json { render json: @refuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refuels/1
  # PATCH/PUT /refuels/1.json
  def update
    respond_to do |format|
      if @refuel.update(refuel_params)
        format.html { redirect_to @refuel, notice: 'Refuel was successfully updated.' }
        format.json { render :show, status: :ok, location: @refuel }
      else
        format.html { render :edit }
        format.json { render json: @refuel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refuels/1
  # DELETE /refuels/1.json
  def destroy
    @refuel.destroy
    respond_to do |format|
      format.html { redirect_to refuels_url, notice: 'Refuel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refuel
      @refuel = Refuel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refuel_params
      params.require(:refuel).permit(:gasoline, :distance, :price, :refuel_date, :user)
    end
end
