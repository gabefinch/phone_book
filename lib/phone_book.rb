class Contact
  attr_reader(:name,:phones,:id,:created_on)
  @@all = []
  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @phones = attributes[:phones]
    @id = @@all.length.+(1)
    @created_on = Time.new()
    @@all.push(self)
  end
  define_singleton_method(:clear) do
    @@all = []
  end
  define_singleton_method(:all) do
    @@all
  end
end
class Phone
  attr_reader(:number,:type,:created_on)
  @@all = []
  define_method(:initialize) do |attributes|
    @number = attributes[:number]
    @type = attributes[:type]
    @created_on = Time.new()
    @@all.push(self)
  end
  define_singleton_method(:clear) do
    @@all = []
  end
  define_singleton_method(:all) do
    @@all
  end
end
