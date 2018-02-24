class CashRegister

  attr_accessor :total, :discount, :items

  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, qty = 1)
    @total += price*qty
    @items << item
  end

  def apply_discount
    @total *= @discount/100
    puts "After the discount, the total comes to $#{@total}."
  end

end
