feature 'index' do
  scenario 'can access bookmarks' do
    visit '/'
    click_on 'View all'
    expect(page).to have_content 'Makers Academy'
    expect(page).to have_content 'BBC News'
  end
end
