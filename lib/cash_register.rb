
class CashRegister
  attr_reader  :quantity
  attr_accessor :total, :discount, :items, :price
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
  @price = price
  @total += price * quantity
  if quantity > 1
    counter = 0
  while counter < quantity
    @items << item
    counter += 1
  end
else @items << item
end
end


  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else @total -= @total * @discount/100
      "After the discount, the total comes to $#{total}."
    end
  end

  # def items
  #     counter = 0
  #     if quantity > 1
  #     while counter < quantity
  #       @item << item
  #       counter += 1
  #     end
  #   else @item << item
  #   end
  # end

def void_last_transaction
  @total -= @total
end
end
