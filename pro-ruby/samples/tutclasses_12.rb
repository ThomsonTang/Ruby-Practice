class BookInStock
    attr_reader :isbn
    # can use attr_writer, but for more likely to want both a reader and a writer for a given attribute,
    # so use the handy-dandy attr_accessor method.
    attr_accessor :price
    
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end

book = BookInStock.new("isbn1", 33.80)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.24
puts "New price = #{book.price}"
