require_relative './setup_test_database'
feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    setup_database
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
end

  feature 'Viewing bookmarks' do
    scenario 'visit bookmark page' do
      setup_database
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://github.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.facebook.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      visit '/bookmarks'
      expect(page).to have_content "https://github.com/"
      expect(page).to have_content "http://www.google.com"
      expect(page).to have_content "https://www.facebook.com/"
    end
  end
