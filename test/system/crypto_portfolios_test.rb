require "application_system_test_case"

class CryptoPortfoliosTest < ApplicationSystemTestCase
  setup do
    @crypto_portfolio = crypto_portfolios(:one)
  end

  test "visiting the index" do
    visit crypto_portfolios_url
    assert_selector "h1", text: "Crypto Portfolios"
  end

  test "creating a Crypto portfolio" do
    visit crypto_portfolios_url
    click_on "New Crypto Portfolio"

    fill_in "Amount owned", with: @crypto_portfolio.amount_owned
    fill_in "Cost per", with: @crypto_portfolio.cost_per
    fill_in "Symbol", with: @crypto_portfolio.symbol
    fill_in "User", with: @crypto_portfolio.user_id
    click_on "Create Crypto portfolio"

    assert_text "Crypto portfolio was successfully created"
    click_on "Back"
  end

  test "updating a Crypto portfolio" do
    visit crypto_portfolios_url
    click_on "Edit", match: :first

    fill_in "Amount owned", with: @crypto_portfolio.amount_owned
    fill_in "Cost per", with: @crypto_portfolio.cost_per
    fill_in "Symbol", with: @crypto_portfolio.symbol
    fill_in "User", with: @crypto_portfolio.user_id
    click_on "Update Crypto portfolio"

    assert_text "Crypto portfolio was successfully updated"
    click_on "Back"
  end

  test "destroying a Crypto portfolio" do
    visit crypto_portfolios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crypto portfolio was successfully destroyed"
  end
end
