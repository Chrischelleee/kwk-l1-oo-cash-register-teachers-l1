# Code your cash register here!
class AmazonTransaction

  attr_accessor :total, :items, :discount, :lastPrice

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @lastPrice = price      #lastPrice would  be the last price of the item
    @total += price * quantity  # total would equal to the price and how much they got of that item
    for i in 0..quantity - 1
      @items << title
    end
  end

  def apply_discount
    if @discount == 0       # if there is no discount to give 
      "There is no discount to apply."
    else
      a = 100.0 - @discount # minus the discount to the price?
      b = a / 100.0         # divide the total of a to 100.00 to get next price
      @total = @total * b   #multiply total to the discounted price
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def cancel
    @total = @total - @lastPrice
  end

end
