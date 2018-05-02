feature 'pit successful' do
  scenario 'clicks pit button and redirects to crust page' do
    sign_in_and_play
    click_button'BREAD PITT'
    expect(page).to have_content 'Another one bites the crust!'
  end
end
