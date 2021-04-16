require_relative '../../app.rb'

feature 'Viewing hit points' do
  scenario 'User can view hit points' do
    visit('/')
    fill_in('p1_name', with: 'Jim')
    fill_in('p2_name', with: 'Kim')
    click_on('Submit')
    expect(page).to have_text 'P1 Health is 100 | P2 Health is 100'
  end
end
