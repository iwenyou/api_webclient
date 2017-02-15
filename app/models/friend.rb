class Friend

  attr_accessor :id, :first_name, :last_name, :birthday, :cat_name

  def initialize(hash)
    @id = hash['id']
    @first_name = hash['first_name']
    @last_name = hash['last_name']
    @birthday = hash['birthday']
    @cat_name = hash['cat_name']
  end

  def friendly_birthday

    birthdate = Date.parse(@birthday)

    birthdate.strftime("%b %d, %Y")

  end

  def self.find(id)

    friend_hash = Unirest.get("http://localhost:3000/api/v1/friends/#{id}").body

    Friend.new(friend_hash)

  end

end
