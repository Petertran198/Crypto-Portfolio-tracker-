require 'test_helper'

class CryptoPortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crypto_portfolio = crypto_portfolios(:one)
  end

  test "should get index" do
    get crypto_portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_crypto_portfolio_url
    assert_response :success
  end

  test "should create crypto_portfolio" do
    assert_difference('CryptoPortfolio.count') do
      post crypto_portfolios_url, params: { crypto_portfolio: { amount_owned: @crypto_portfolio.amount_owned, cost_per: @crypto_portfolio.cost_per, symbol: @crypto_portfolio.symbol, user_id: @crypto_portfolio.user_id } }
    end

    assert_redirected_to crypto_portfolio_url(CryptoPortfolio.last)
  end

  test "should show crypto_portfolio" do
    get crypto_portfolio_url(@crypto_portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_crypto_portfolio_url(@crypto_portfolio)
    assert_response :success
  end

  test "should update crypto_portfolio" do
    patch crypto_portfolio_url(@crypto_portfolio), params: { crypto_portfolio: { amount_owned: @crypto_portfolio.amount_owned, cost_per: @crypto_portfolio.cost_per, symbol: @crypto_portfolio.symbol, user_id: @crypto_portfolio.user_id } }
    assert_redirected_to crypto_portfolio_url(@crypto_portfolio)
  end

  test "should destroy crypto_portfolio" do
    assert_difference('CryptoPortfolio.count', -1) do
      delete crypto_portfolio_url(@crypto_portfolio)
    end

    assert_redirected_to crypto_portfolios_url
  end
end
