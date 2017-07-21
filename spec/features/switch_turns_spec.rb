require_relative 'web_helpers'

feature 'Switch turns' do
  context 'showing the current turn on the page' do
    scenario 'at the beginning of the game' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end

    scenario 'after the first round of attack' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).to have_content "Mittens's turn"
    end
  end
end
