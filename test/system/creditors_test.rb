require "application_system_test_case"

class CreditorsTest < ApplicationSystemTestCase
  setup do
    @creditor = creditors(:one)
  end

  test "visiting the index" do
    visit creditors_url
    assert_selector "h1", text: "Creditors"
  end

  test "creating a Creditor" do
    visit creditors_url
    click_on "New Creditor"

    check "Confirmed" if @creditor.confirmed
    fill_in "Transaction", with: @creditor.transaction_id
    fill_in "User", with: @creditor.user
    click_on "Create Creditor"

    assert_text "Creditor was successfully created"
    click_on "Back"
  end

  test "updating a Creditor" do
    visit creditors_url
    click_on "Edit", match: :first

    check "Confirmed" if @creditor.confirmed
    fill_in "Transaction", with: @creditor.transaction_id
    fill_in "User", with: @creditor.user
    click_on "Update Creditor"

    assert_text "Creditor was successfully updated"
    click_on "Back"
  end

  test "destroying a Creditor" do
    visit creditors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creditor was successfully destroyed"
  end
end
