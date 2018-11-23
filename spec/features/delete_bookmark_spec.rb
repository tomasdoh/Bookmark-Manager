feature 'delete bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://test-url.com', title: 'test-title')
    visit('/bookmarks')
    expect(page).to have_link('test-title', href: 'http://test-url.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('test-title', href: 'http://test-url.com')
  end
end
