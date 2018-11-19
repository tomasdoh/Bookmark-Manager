feature 'index' do
  scenario 'can access bookmarks' do
    visit '/'
    click_on 'View all'
    expect(page).to have_content 'http://makers.tech'
    expect(page).to have_content 'http://bbcnews.com'
    expect(page).to have_content 'http://google.com'
  end
end
