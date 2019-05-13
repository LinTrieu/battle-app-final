require 'library'
describe Library do
  it 'can return a list of all books' do
    #arrange
    library = Library.new
    #act
    output = library.list_books
    #assert
    expect(output).to include( 
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
      )
  end

  it 'can add a new book' do
    #arrange
    library = Library.new
    new_book = {title: 'Harry Potter', author: 'JK Rowling', subject: 'Fiction'}
    #act
    output = library.add_book(new_book)
    #assert
    expect(output).to include(
      {title: 'Harry Potter', author: 'JK Rowling', subject: 'Fiction'} 
    )
    end

  it 'can find a specific book' do
    #arrange
    library = Library.new
    missing_book = 'Eloquent JavaScript'
    #act
    output = library.find_book(missing_book)
    #assert
    expect(output).to eq(
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'}
    )
    end

  it 'can delete a book' do
    #arrange
    library = Library.new
    rubbish_book = 'POODR'
    #act
    output = library.remove_book(rubbish_book)
    #assert
    expect(library.list_books).not_to include(
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
    )
  end

  it 'can return a list of all books by subject' do
    #arrange
    library = Library.new
    subject = 'Ruby'
    #act
    output = library.all_books_by_subject(subject)
    #assert
    expect(output).to eq(
      [{title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}]
      )
  end

end
