feature 'testing name forms' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Oli'
    fill_in :player_2_name, with: 'Salpal'
    click_button 'Enter game'
    expect(page).to have_content 'Oli vs. Salpal'
  end
end
