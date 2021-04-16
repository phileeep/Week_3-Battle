require_relative '../../app.rb'
require_relative './web_helpers.rb'

feature 'Viewing hit points' do
  scenario 'User can view hit points' do
    visit('/')
    sign_in_and_play
    expect(page).to have_text 'P1 Health is 100 | P2 Health is 100'
  end
end
