class Contact

  attr_reader(:name,:phone,:id,:created_on)
  @@all = []

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @phone = attributes[:phone]
    @id = @@all.length.+(1)
    @created_on = Time.new()
    @@all.push(self)
  end

  define_singleton_method(:clear) do
    @@all = []
  end

end
