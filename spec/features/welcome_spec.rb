require 'rails_helper'

describe 'As a visitor' do
  it "displays welcome message" do
    visit root_path

    expect(page).to have_content("Welcome to 'Ethan the Raindrop' the website!")
  end
end
