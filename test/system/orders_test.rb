require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Item description", with: @order.item_description
    fill_in "Item price", with: @order.item_price
    fill_in "Merchant address", with: @order.merchant_address
    fill_in "Merchant name", with: @order.merchant_name
    fill_in "Purchase count", with: @order.purchase_count
    fill_in "Purchaser name", with: @order.purchaser_name
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Item description", with: @order.item_description
    fill_in "Item price", with: @order.item_price
    fill_in "Merchant address", with: @order.merchant_address
    fill_in "Merchant name", with: @order.merchant_name
    fill_in "Purchase count", with: @order.purchase_count
    fill_in "Purchaser name", with: @order.purchaser_name
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
