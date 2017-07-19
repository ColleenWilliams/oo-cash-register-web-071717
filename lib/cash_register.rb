
require 'pry'

class CashRegister

  attr_accessor :discount, :total


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @quantity = quantity
    @title = title
    @total += @price*@quantity
    quantity.times do
      @all << @title
    end
  end

  def apply_discount
    if self.discount != 0
      # binding.pry
      @discount = @total * (@discount.to_f / 100)
      @total -= @discount.to_i
      "After the discount, the total comes to $#{@total}."
    else
      @total = @total
      "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    @total = 0
  end

end
