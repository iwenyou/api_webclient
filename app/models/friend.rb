class Friend

  attr_accessor :id, :first_name, :last_name, :birthday, :cat_name

  def initialize(hash)
    @id = hash['id']
    @first_name = hash['first_name']
    @last_name = hash['last_name']
    @birthday = hash['birthday']
    @cat_name = hash['cat_name']
  end

  def self.all

    friends = []

    friends_array = Unirest.get("http://localhost:3000/api/v1/friends").body

    friends_array.each do |friend_hash|
      friends << Friend.new(friend_hash)
    end

    friends

  end

  def self.find(id)

    friend_hash = Unirest.get("http://localhost:3000/api/v1/friends/#{id}").body

    Friend.new(friend_hash)

  end

  def self.destroy(id)

    Unirest.delete("http://localhost:3000/api/v1/friends/#{id}").body

  end

  def friendly_birthday

    birthdate = Date.parse(@birthday)

    birthdate.strftime("%b %d, %Y")

  end

end
