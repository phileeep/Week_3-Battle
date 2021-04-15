require_relative '../../app.rb'

feature 'Entering Names' do
  scenario 'User can enter names' do
    visit('/')
    fill_in('p1_name', with: 'Jim')
    fill_in('p2_name', with: 'Kim')
    click_on('Submit')
    expect(page).to have_text 'Jim vs. Kim!'
  end
end
