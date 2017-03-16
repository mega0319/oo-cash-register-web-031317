class CashRegister
attr_accessor :discount, :total


  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @price = price * quantity
    @total += @price
    while quantity > 0 do
     @items << title
     quantity -= 1
   end
  end

  def apply_discount
    if @discount==nil
      "There is no discount to apply."
    else
      @total -= (@total*@discount/100)
      "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
    @items.pop()
  end

end
