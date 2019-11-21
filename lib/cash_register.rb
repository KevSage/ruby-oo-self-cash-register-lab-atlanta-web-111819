require 'pry'
class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @items = []
        @total = 0
        @last_transaction = items.pop
    end
    def add_item(title, price, quantity= 1)
        price *= quantity
        @total += price
        if quantity > 1
            times = quantity
            while times > 0 do
              @items.push(title)
              times -=1  
            end
        else 
            @items.push(title)
        end
    end
    def apply_discount
        total_discount = @total * discount/100
        @total -= total_discount
        if total_discount > 0
        "After the discount, the total comes to $#{@total}."
        else
       "There is no discount to apply."
        end
    end
    def new_register(items)
        pp self.items
    end
    def void_last_transaction
        @items.pop
        @items
    end
   
end