class BookInStock
    attr_reader :isbn
    attr_accessor :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    def price_in_cents
        Integer(price * 100 + 0.5)
    end

    # Here we've used attribute methods to create a virtual instance variable.
    # To the outside world, price_in_cents seems to be an attribute like any other.
    # Internally, though, it has no corresponding instance variable.
    def price_in_cents= (price)
        @price = price / 100.0
    end
end

book = BookInStock.new("isbn1", 12.23)
puts "price = #{book.price}"
puts "price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

