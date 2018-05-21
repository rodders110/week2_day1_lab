class Library
  attr_accessor :books

  def initialize(input_books)
    @books = input_books
  end

  def get_books()
    return @books
  end

  def get_book_info(title)
    for book in @books
      if(book[:Title] == title)
        return book
      end
    end
  end

  def get_rental_info(title)
    return get_book_info(title)[:rental_details]
  end

  def add_book(new_book)
    @books << new_book
  end

  def change_rental_info(title, student_name, date)
    get_book_info(title)[:rental_details][:student_name] = student_name
    get_book_info(title)[:rental_details][:date] = date

  end

end
