class CashRegister
  attr_accessor :total
  attr_reader :discount
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  def add_item(title,price,quantity = 1)
    @total += price * quantity
  end
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
  end
end
