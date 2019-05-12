class CryptoPortfoliosController < ApplicationController
  before_action :set_crypto_portfolio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /crypto_portfolios
  # GET /crypto_portfolios.json
  def index
    @crypto_portfolios = CryptoPortfolio.all
  end

  # GET /crypto_portfolios/1
  # GET /crypto_portfolios/1.json
  def show
  end

  # GET /crypto_portfolios/new
  def new
    @crypto_portfolio = CryptoPortfolio.new
  end

  # GET /crypto_portfolios/1/edit
  def edit
  end

  # POST /crypto_portfolios
  # POST /crypto_portfolios.json
  def create
    @crypto_portfolio = CryptoPortfolio.new(crypto_portfolio_params)

    respond_to do |format|
      if @crypto_portfolio.save
        format.html { redirect_to @crypto_portfolio, notice: 'Crypto portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @crypto_portfolio }
      else
        format.html { render :new }
        format.json { render json: @crypto_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crypto_portfolios/1
  # PATCH/PUT /crypto_portfolios/1.json
  def update
    respond_to do |format|
      if @crypto_portfolio.update(crypto_portfolio_params)
        format.html { redirect_to @crypto_portfolio, notice: 'Crypto portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @crypto_portfolio }
      else
        format.html { render :edit }
        format.json { render json: @crypto_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crypto_portfolios/1
  # DELETE /crypto_portfolios/1.json
  def destroy
    @crypto_portfolio.destroy
    respond_to do |format|
      format.html { redirect_to crypto_portfolios_url, notice: 'Crypto portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crypto_portfolio
      @crypto_portfolio = CryptoPortfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crypto_portfolio_params
      params.require(:crypto_portfolio).permit(:symbol, :user_id, :cost_per, :amount_owned)
    end
end