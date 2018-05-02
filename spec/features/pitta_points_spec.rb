feature 'showing pitta points' do
  scenario 'displaying string' do
    visit('/play')
    expect(page).to have_content 'Pit(ta) Points'
  end
end
