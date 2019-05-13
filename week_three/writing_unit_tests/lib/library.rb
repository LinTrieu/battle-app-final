class Library
  attr_reader :books

  def initialize
    @books = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
  end

  def list_books
    books
  end

  def add_book(book)
    books.push(book)
  end

  def find_book(title)
    books.select{ |book| book[:title] == title }.first
  end

  def remove_book(title)
    books.delete_if{ |book| book[:title] == title }
  end

  def all_books_by_subject(subject)
    books.select{ |book| book[:subject] == subject }
  end
end
