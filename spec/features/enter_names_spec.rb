require_relative '../../app.rb'

feature 'Entering Names' do
  scenario 'User can enter names' do
    visit('/fight')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
