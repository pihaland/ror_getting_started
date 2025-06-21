require 'rails_helper'

RSpec.describe "Articles flow", type: :system do
  before do
    driven_by :selenium
  end

  it "allows a user to create a new article" do
    visit root_path
    click_on "Create a new article"

    fill_in "Title", with: "Test Article"
    fill_in "Body",  with: "This body is more than ten characters long."
    click_on "Create Article"

    expect(page).to have_content("Test Article")
    expect(page).to have_content("This body is more than ten characters long.")

    click_on "HOME"

    expect(page).to have_content("Test Article")
    expect(page).to have_content("This body is more than ten characters long.")
  end
end