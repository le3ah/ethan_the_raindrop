require 'rails_helper'

describe 'As a visitor' do
  it "displays welcome message" do
    visit root_path
    expect(page).to have_content("Welcome to 'Ethan the Raindrop' the website!")
  end
  it "links to the start of the story" do
    visit root_path

    click_on "See the start of Ethan's journey"

    expect(current_path).to eq('/story')

    expect(page).to have_content("Ethan opened his eyes to a brand new day")
  end
end
