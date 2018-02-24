class CashRegister

  attr_accessor :total, :discount, :items

  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, qty = 1)
    @total += price*qty
    #@items << item
  end

  def total
    @total *= @discount/100 if @discount != 0
    @total
  end

  def apply_discount
    if @discount > 0
      puts "After the discount, the total comes to $#{self.total}."
    elsif @discount == 0
      puts "There is no discount to apply"
    end
  end

end
