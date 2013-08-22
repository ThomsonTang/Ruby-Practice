class BookInStock
    attr_reader :isbn, :price
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end

    def price= (new_price)
        @price = new_price
    end
end

book = BookInStock.new("isbn3", "5.14")
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75  # discount price
puts "New price = #{book.price}"
