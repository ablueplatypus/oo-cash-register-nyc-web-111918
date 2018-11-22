require 'pry'
class CashRegister

attr_accessor :discount, :total, :quantity, :title, :price, :items, :void_last_transaction
attr_reader :title

  def initialize(discount=0) #sets instance variable
    @total = 0
    @discount = discount

    @items = []
  end

               #per r spec this order!
  def add_item(title, price, quantity=1)
    self.total += price * quantity #Think about this logically
    #you go into a store and buy and item. How do you get the total of the item.
    #you MULTIPLY BY THE PRICE!!!! DURRRRR!!! GOD MORTY YOUR SO DUMB
    @price = price
      #do this x amount of times.
    quantity.times do
    @items << title
    end

  end

  def apply_discount
    #applying a discount would be 20% * total amount
    #what is the the default discount.
    #How do we make 20 into a decmial

    if @discount ==  0 #returns a string error message that there is no discount to apply
    "There is no discount to apply."
    else
      #1000  *     (20.0 /100) = .02 = 200.0 - 1000 = - 800
     #self.total * (@discount.to_f / 100)
                        #1000        20 /100 = 0.2
    self.total = (self.total - (@discount.to_f / 100) * self.total).to_i # turns it to an FixNUM
     "After the discount, the total comes to $#{self.total}."
   end

 end # end of apply_discount

  def void_last_transaction #subtract the last price from the total price.
    @total = @total - @price
  end

end #end of class

total1 = CashRegister.new(100)


#binding.pry
