require 'rails_helper'

feature 'visit the front page' do
  scenario 'the user sees the questionnaire welcome message' do
    visit root_path
    expect(page).to have_text('Welcome to Questionnaire 5000 Version 2 Beta.')
  end
end
