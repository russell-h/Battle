feature 'attack' do 
  scenario 'attack player 2' do
    signed_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end