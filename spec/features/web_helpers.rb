def sign_in_and_play
  fill_in('p1_name', with: 'Scooby')
  fill_in('p2_name', with: 'Scrappy')
  click_on('Submit')
end