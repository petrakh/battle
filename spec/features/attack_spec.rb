feature 'Attacking' do
  before do
    sign_in_and_play
    click_button 'Attack'
  end

  context 'Player 1 attacks Player 2' do
    scenario 'attack Player 2' do
      expect(page).to have_content 'Dave attacked Mittens'
    end

    scenario 'reduce Player 2 HP by 10' do
      click_button 'OK'
      expect(page).not_to have_content 'Mittens: 60HP'
      expect(page).to have_content 'Mittens: 50HP'
    end
  end

  context 'Player 2 attacks Player 1' do
    before do
      click_button 'OK'
      click_button 'Attack'
    end

    scenario 'attack Player 1' do
      expect(page).to have_content 'Mittens attacked Dave'
    end

    scenario 'reduce Player 1 HP by 10' do
      expect(page).to have_content 'Dave: 50HP'
    end
  end

  context 'Game Over' do
    scenario 'triggers game over when player 2 HP reach 0' do
      10.times do
        click_button 'OK'
        click_button 'Attack'
      end
      expect(page).to have_content 'Game Over Mittens!!!'
    end
  end
end
