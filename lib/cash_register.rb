class CashRegister

  attr_accessor :total, :discount, :items

  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f/100
  end

  def add_item(item, price, qty = 1)
    @total += price*qty
    #@items << item
  end

  def apply_discount
    if @discount > 0
      @total *= 1-@discount
      msg = "After the discount, the total comes to $#{@total}."
    else
      error_message =  "There is no discount to apply."
    end
  end

end
