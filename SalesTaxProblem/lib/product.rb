class Product

  YES_OR_NO = { true => 'y', false => 'n' }

  attr_reader :price
  def initialize(name = '', price = 0, sales_tax_exempted = false, imported = false)
      @name = (block_given? ? yield('Name of product: ') : name)
      @imported = (block_given? ? Product::YES_OR_NO.key(yield("Is the product imported?#{ Product::YES_OR_NO.values.join('/') }: ")) : imported)
      @sales_tax_exempted = (block_given? ? Product::YES_OR_NO.key(yield("Exexempted from sales tax?#{ Product::YES_OR_NO.values.join('/') }: ")) : sales_tax_exempted)
      @price = (block_given? ? (yield('Price: ').to_i) : price)
  end

  def sales_tax
    !@sales_tax_exempted ? @price * 0.10 : 0
  end

  def import_tax
    @imported ? @price * 0.05 : 0
  end

  def total_price
    price + sales_tax + import_tax
  end

  def to_s
    "#{ format("%7s", @name) }____#{ format("%6.2f", @price) }____#{ format("%6.2f", sales_tax) }____#{ format("%6.2f", import_tax) }____#{ total_price.round }"
  end

end
