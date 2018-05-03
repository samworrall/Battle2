feature 'testing name forms' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Alastair Habs vs. Alastair Salpal'
  end
end

feature 'showing pitta points' do
  scenario 'displaying string' do
    sign_in_and_play
    expect(page).to have_content 'Salpal: 100 Pit(ta) Points'
  end
end

feature 'pit successful' do
  scenario 'clicks pit button and redirects to crust page' do
    sign_in_and_play
    click_button'BREAD PITT'
    expect(page).to have_content 'Another one bites the crust!'
  end
end

feature 'reduce pitta points by 10' do
  scenario 'clicks keep fighting, and pitta points reduced by 10' do
    sign_in_and_play
    click_button'BREAD PITT'
    click_button'KEEP FIGHTING!'
    expect(page.find('h2', id: 'player_1').text).to eq "Habs: 90 Pit(ta) Points"
  end

  scenario 'clicks keep fighting, and pitta points reduced by 10' do
    sign_in_and_play
    click_button'BREAD PITT'
    click_button'KEEP FIGHTING!'
    expect(page.find('h2', id: 'player_2').text).to eq "Salpal: 90 Pit(ta) Points"
  end
end
