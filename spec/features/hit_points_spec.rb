feature 'view hit points' do 
  scenario 'view player 2 hit pints' do
    signed_in_and_play
    
    
    expect(page).to have_content 'Mittens: 60HP'
  end
end