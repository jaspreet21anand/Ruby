class Cart

  attr_accessor :owner_name, :item_list
  def initialize(customer_name)
    @owner_name = customer_name
    @item_list = []
  end

  def grand_total
    grand_total = 0
    item_list.each { |product| grand_total += product.total_price }
    grand_total
  end

end
