class CashRegister
  attr_accessor :total
  def initialize(discount=nil)
    @total = 0
  end
  def add_item(title,price,quantity = 1)
    @total += price * quantity

  end
end
