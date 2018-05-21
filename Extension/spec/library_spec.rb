require("minitest/autorun")
require("minitest/rg")

require_relative("../library")

class TestLibrary < MiniTest::Test

  def setup()
    @library = Library.new([{Title: "Lord_of_the_rings", rental_details: {student_name: "Jeff", date: "01/12/2016"}},{Title: "To Kill a Moking Bird",rental_details:{student_name: "Tommy", date: "12/12/2016"} }])
  end

  def test_get_books
    books = @library.get_books()

    assert_equal([{Title: "Lord_of_the_rings", rental_details: {student_name: "Jeff", date: "01/12/2016"}},{Title: "To Kill a Moking Bird",rental_details:{student_name: "Tommy", date: "12/12/2016"} }],books)
  end
  def test_get_book_info
    title = "Lord_of_the_rings"
    info = @library.get_book_info(title)

    assert_equal({Title: "Lord_of_the_rings", rental_details: {student_name: "Jeff", date: "01/12/2016"}},info)
  end

  def test_get_rental_info
    title = "Lord_of_the_rings"
    info = @library.get_rental_info(title)

    assert_equal({student_name: "Jeff", date: "01/12/2016"},info)
  end
  #
  def test_add_book
    new_book = {Title: "Animal Farm", rental_details:{student_name: "", date: ""}}
    @library.add_book(new_book)

    assert_equal([{Title: "Lord_of_the_rings", rental_details: {student_name: "Jeff", date: "01/12/2016"}},{Title: "To Kill a Moking Bird",rental_details:{student_name: "Tommy", date: "12/12/2016"} }, {Title: "Animal Farm", rental_details:{student_name: "", date: ""}}],@library.get_books())
  end

  def test_change_rental_info

  @library.change_rental_info("Lord_of_the_rings", "Rodger", "25/12/2016")
  info = @library.get_book_info("Lord_of_the_rings")

  assert_equal({Title: "Lord_of_the_rings", rental_details: {student_name: "Rodger", date: "25/12/2016"}}, info)

  end

end
