require('rspec')
require('phone_book')

describe(Contact) do
  before() do
    Contact.clear()
  end
  describe('#name') do
    it('returns the name from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phone => 6200})
      b = Contact.new({:name => "Brenda Lee",:phone => 1234567})
      c = Contact.new({:name => "C. Berry",:phone => 7777777})
      expect(a.name()).to(eq("Bigelow"))
      expect(b.name()).to(eq("Brenda Lee"))
      expect(c.name()).to(eq("C. Berry"))
    end
  end
  describe('#phone') do
    it('returns the name from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phone => 6200})
      b = Contact.new({:name => "Brenda Lee",:phone => 1234567})
      c = Contact.new({:name => "C. Berry",:phone => 7777777})
      expect(a.phone()).to(eq(6200))
      expect(b.phone()).to(eq(1234567))
      expect(c.phone()).to(eq(7777777))
    end
  end
  describe('#id') do
    it('returns the name from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phone => 6200})
      b = Contact.new({:name => "Brenda Lee",:phone => 1234567})
      c = Contact.new({:name => "C. Berry",:phone => 7777777})
      expect(a.id()).to(eq(1))
      expect(b.id()).to(eq(2))
      expect(c.id()).to(eq(3))
    end
  end
  describe('#created_on') do
    it('returns the name from a contact instance') do
      a = Contact.new({:name => "Bigelow",:phone => 6200})
      b = Contact.new({:name => "Brenda Lee",:phone => 1234567})
      c = Contact.new({:name => "C. Berry",:phone => 7777777})
      expect(a.created_on().class()).to(eq(Time))
      expect(b.created_on().class()).to(eq(Time))
      expect(c.created_on().class()).to(eq(Time))
    end
  end
end
