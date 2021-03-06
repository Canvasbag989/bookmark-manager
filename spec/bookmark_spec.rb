require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES('https://github.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://makers.tech/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://github.com/")
      expect(bookmarks).to include("https://makers.tech/")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
