require_relative '../../app.rb'

feature 'Attacking P2' do
  scenario 'When P1 attacks they are given a confirmation' do
    visit('/')
    sign_in_and_play
    click_on('Attack')
    expect(page).to have_text 'P1 Attacked P2!'
    expect(page).to have_text 'P1 Attacked P2!'
  end
end
