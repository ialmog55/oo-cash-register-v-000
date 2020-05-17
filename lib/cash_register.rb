class CashRegister
  attr_accessor :total
  attr_reader :discount
  @@items = []
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  def add_item(title,price,quantity = 1)
    @total += price * quantity
    quantity.times do 
      @@items << title
    end
  end
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items
  end
end
