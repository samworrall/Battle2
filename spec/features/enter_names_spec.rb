feature 'testing name forms' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Alastair Habs vs. Alastair Salpal'
  end
end
