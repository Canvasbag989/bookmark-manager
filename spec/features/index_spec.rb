feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
end

  feature 'Viewing bookmarks' do
    scenario 'visit bookmark page' do
      visit '/bookmarks'
      expect(page).to have_content "https://github.com/"
    end
  end
