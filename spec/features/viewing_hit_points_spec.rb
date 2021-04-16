require_relative '../../app.rb'
require_relative './web_helpers.rb'

feature 'Viewing hit points' do
  scenario 'User can view hit points' do
    visit('/')
    sign_in_and_play
    expect(page).to have_text 'Scooby 100 HP | Scrappy 100 HP'
  end
end
