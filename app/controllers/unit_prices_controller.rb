class UnitPricesController < ApplicationController
  before_action :set_unit_price, only: [:show, :edit, :update, :destroy]

  # GET /unit_prices
  # GET /unit_prices.json
  def index
    @unit_prices = UnitPrice.all
  end

  # GET /unit_prices/1
  # GET /unit_prices/1.json
  def show
  end

  # GET /unit_prices/new
  def new
    @unit_price = UnitPrice.new
  end

  # GET /unit_prices/1/edit
  def edit
  end

  # POST /unit_prices
  # POST /unit_prices.json
  def create
    @unit_price = UnitPrice.new(unit_price_params)

    respond_to do |format|
      if @unit_price.save
        format.html { redirect_to @unit_price, notice: 'Unit price was successfully created.' }
        format.json { render :show, status: :created, location: @unit_price }
      else
        format.html { render :new }
        format.json { render json: @unit_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_prices/1
  # PATCH/PUT /unit_prices/1.json
  def update
    respond_to do |format|
      if @unit_price.update(unit_price_params)
        format.html { redirect_to @unit_price, notice: 'Unit price was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_price }
      else
        format.html { render :edit }
        format.json { render json: @unit_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_prices/1
  # DELETE /unit_prices/1.json
  def destroy
    @unit_price.destroy
    respond_to do |format|
      format.html { redirect_to unit_prices_url, notice: 'Unit price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_price
      @unit_price = UnitPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_price_params
      params.require(:unit_price).permit(:abv, :volume, :units, :price, :unitprice)
    end
end
