class Product
  @@objects_created = []

  def initialize(name = '', price = 0, sales_tax = false, import_tax = false)
    if block_given?
      @name = yield('Name of product: ')
      @import_tax = yield('Is the product imported?(y/n): ').downcase == 'y' ? true : false
      @sales_tax = yield('Exexempted from sales tax?(y/n): ').downcase == 'y' ? true : false
      @price = yield('Price: ').to_i
    else
      @name = name
      @price = price
      @sales_tax = sales_tax
      @import_tax = import_tax
    end
    @@objects_created << self
  end

  def sales_tax
    return @price * 0.10 if !@sales_tax
    0
  end

  def import_tax
    return @price * 0.05 if @import_tax
    0
  end

  def total_price
    @price + sales_tax + import_tax
  end

  def self.grand_total(*other)
    grand_total = 0
    if other.empty?
      @@objects_created.each { |product| grand_total += product.total_price }
      return grand_total
    end
    other.each { |product| grand_total += product.total_price }
  end

  def to_s
    "#{ format("%7s", @name) }____#{ format("%6.2f", @price) }____#{ format("%6.2f", sales_tax) }____#{ format("%6.2f", import_tax) }____#{ total_price.round }"
  end

end