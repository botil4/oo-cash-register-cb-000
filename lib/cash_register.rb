class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, qty = 1)

  end

  def apply_discount

  end

end
