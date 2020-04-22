class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(name, price, quantity=1)
        @total += (price * quantity)
        quantity.times{@items.push(name)}
        @last_item = price * quantity
    end

    def apply_discount
        if @discount > 0
            @total *= (100-@discount)
            @total /= 100
            p("After the discount, the total comes to $#{@total}.")
        else
            p("There is no discount to apply.")
        end
    end

    def void_last_transaction
        @total -= @last_item
    end

end
