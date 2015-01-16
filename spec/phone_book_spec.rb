require('rspec')
require('phone_book')

describe(Contact) do
  before() do
    Contact.clear()
  end
  describe('#name') do
    it('returns the name from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      expect(a.name()).to(eq("Bigelow"))
      expect(b.name()).to(eq("Brenda Lee"))
      expect(c.name()).to(eq("C. Berry"))
    end
  end
  describe('#phones') do
    it('returns the phones from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      expect(a.phones()).to(eq(6200))
      expect(b.phones()).to(eq(1234567))
      expect(c.phones()).to(eq(7777777))
    end
  end
  describe('#id') do
    it('returns the id from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      expect(a.id()).to(eq(1))
      expect(b.id()).to(eq(2))
      expect(c.id()).to(eq(3))
    end
  end
  describe('#created_on') do
    it('returns a Date object from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      expect(a.created_on().class()).to(eq(Time))
      expect(b.created_on().class()).to(eq(Time))
      expect(c.created_on().class()).to(eq(Time))
    end
  end
  describe('.clear') do
    it('Clears the @@all Contact variable') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end
  describe('.all') do
    it('Returns the @@all Contact variable') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      expect(Contact.all()).to(eq([a, b, c]))
    end
  end
  describe('.find_id') do
    it('Returns the contact instance matching an id#') do
      a = Contact.new({:name => "Bigelow",:phones => 6200})
      b = Contact.new({:name => "Brenda Lee",:phones => 1234567})
      c = Contact.new({:name => "C. Berry",:phones => 7777777})
      expect(Contact.find_id(1)).to(eq(a))
      expect(Contact.find_id(2)).to(eq(b))
      expect(Contact.find_id(3)).to(eq(c))
    end
  end
  describe('#add_phone') do
    it('Adds a Phone instance to the @phones array') do
      phone_home = Phone.new({:number => "564-890-4567", :type => "Home"})
      a = Contact.new({:name => "Bigelow",:phones => [phone_home]})
      office_phone = Phone.new({:number => "456-789-1212", :type => "Office"})
      a.add_phone(office_phone)
      expect(a.phones()).to(eq([phone_home, office_phone]))
    end
  end
end
describe(Phone) do
  before() do
    Phone.clear()
  end
  describe('#number') do
    it('returns the number from a Phone object') do
      a = Phone.new({:number => 1112222,:type => "Home"})
      b = Phone.new({:number => 3334444,:type => "Cellular"})
      c = Phone.new({:number => 5556666,:type => "Office"})
      expect(a.number()).to(eq(1112222))
      expect(b.number()).to(eq(3334444))
      expect(c.number()).to(eq(5556666))
    end
  end
  describe('#type') do
    it('returns the type from a Phone object') do
      a = Phone.new({:number => 1112222,:type => "Home"})
      b = Phone.new({:number => 3334444,:type => "Cellular"})
      c = Phone.new({:number => 5556666,:type => "Office"})
      expect(a.type()).to(eq("Home"))
      expect(b.type()).to(eq("Cellular"))
      expect(c.type()).to(eq("Office"))
    end
  end
  describe('#created_on') do
    it('returns a date object from a Phone object') do
      a = Phone.new({:number => 1112222,:type => "Home"})
      b = Phone.new({:number => 3334444,:type => "Cellular"})
      c = Phone.new({:number => 5556666,:type => "Office"})
      expect(a.created_on().class()).to(eq(Time))
      expect(b.created_on().class()).to(eq(Time))
      expect(c.created_on().class()).to(eq(Time))
    end
  end
  describe('.clear') do
    it('clears the Phone class @@all variable') do
      a = Phone.new({:number => 1112222,:type => "Home"})
      b = Phone.new({:number => 3334444,:type => "Cellular"})
      c = Phone.new({:number => 5556666,:type => "Office"})
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end
  describe('.all') do
    it('returns the Phone class @@all variable') do
      a = Phone.new({:number => 1112222,:type => "Home"})
      b = Phone.new({:number => 3334444,:type => "Cellular"})
      c = Phone.new({:number => 5556666,:type => "Office"})
      expect(Phone.all()).to(eq([a, b, c]))
    end
  end
end
