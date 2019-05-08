require 'rails_helper'

describe 'As a visitor' do
  it "displays welcome message" do
    visit root_path
    expect(page).to have_content("Welcome to Ethan the Raindrop the website!")
  end
  it "links to the start of the story" do
    visit root_path
    within '#story_button' do
      click_on "See the start of Ethan's journey"
    end
    expect(current_path).to eq('/story')

    expect(page).to have_content("Ethan opened his eyes to a brand new day")
  end
  it "links to the next page" do
    visit '/story'

    within '#next_button' do
      click_on "Next page"
    end 
    expect(current_path).to eq('/next_page')

    expect(page).to have_content("Somewhere over the big blue ocean,")
    expect(page).to have_content("Ethan's brother was in a hurry,")
    expect(page).to have_content("With help from Father Sun and Mother Moon,")
  end
end
