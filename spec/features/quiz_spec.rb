require 'rails_helper'

# Check if New Questionnaire input works
RSpec.feature 'adding a Questionnaire' do

  scenario 'allow a user to add values in all fields' do

    visit new_quiz_path

    find(".start_question").click

    fill_in 'quiz_name', with: 'Name'
    fill_in "quiz_label", with: "Label"

    find('a.add_fields').click

    fill_in 'quiz_questions_attributes_0_text', with: 'Question'

    expect(page).to have_field('Name')
    expect(page).to have_field('Label')
    expect(page).to have_field('Question')

  end

end

# Check if Admin Page is accessible
RSpec.feature 'access Admin page' do

  scenario 'allow a user to see admin page' do

    visit root_path

    find('.new_questionnaire.admin').click_link

    expect(page).to have_text('Here you will find all the Questionnaires that have been completed.')

  end

end

# Check if Home button works
RSpec.feature 'access Home page' do

  scenario 'allow a user to return home' do

    visit results_path

    find('.new_questionnaire.home').click_link

    expect(page).to have_text('Please select a Questionnaire from below to take. Your input is very important to us!')

  end

end
