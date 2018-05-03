require 'pitta_points'

feature 'showing pitta points' do
  scenario 'displaying string' do
    sign_in_and_play
    expect(page).to have_content 'Salpal: Pit(ta) Points'
  end
end
