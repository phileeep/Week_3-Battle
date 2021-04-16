require_relative '../../app.rb'

feature 'Attacking P2' do
  scenario 'When P1 attacks they are given a confirmation' do
    visit('/')
    sign_in_and_play
    click_on('Attack')
    expect(page).to have_text 'Scooby Attacked Scrappy'
  end
  scenario "When P1 attacks P2, P2's health drops by 10" do 
    visit('/')
    sign_in_and_play
    click_on('Attack')
    expect(page).to have_text 'Scrappy 90 HP'
  end
end
