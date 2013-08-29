class BookInStock
    attr_reader :isbn, :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end

require 'CSV'
class CsvReader
    def initialize
        @books_in_stock = []
    end

    def read_csv_file(file_name)
        CSV.foreach(file_name, headers: true) do |row|
            @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
        end
    end

    def total_value_in_stock
        sum = 0.0
        @books_in_stock.each {|book| sum += book.price}
        sum
    end

    def number_of_each_isbn
    end
end

reader = CsvReader.new
ARGV.each do |csv_file_name|
    STDERR.puts "Processing #{csv_file_name}"
    reader.read_csv_file(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"
