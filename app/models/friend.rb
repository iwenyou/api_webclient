class Friend

  attr_accessor :id, :first_name, :last_name, :birthday, :cat_name

  def initialize(hash)
    @id = hash['id']
    @first_name = hash['first_name']
    @last_name = hash['last_name']
    @birthday = hash['birthday']
    @cat_name = hash['cat_name']
  end

end
