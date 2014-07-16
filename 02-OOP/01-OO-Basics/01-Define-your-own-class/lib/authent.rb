class Authent
  def initialize(name, age, email, mailconfirmed)
    @name = name
    @age = age
    @email = email
    @mailconfirmed = mailconfirmed
  end

  def mailconfirmed
    mailconfirmed = true
  end
end
arthur = Authent.new("Arthur", 28, "arthur@gmail.com", true)