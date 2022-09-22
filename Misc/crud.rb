# Module definition, needs closing end
module Crud
  require 'bcrypt'
 
  users = [
      {:username=>"Stefon", :password=>"$2a$12$KKEVWTYnQCf1SUhQsHgeou1rKDZnVX8L70dM54awcAFcIYRjaQKkq"},
      {:username=>"Emily", :password=>"$2a$12$4CRlxjX5tjXQJGWvtltIx.KnqxMslGzL/8Ma2QzqUukUHMnt8p8SG"},
      {:username=>"Barb", :password=>"$2a$12$U8wLa7dOiiC6CxHRWeBMauK9HFg/Auv5uB.mFjdu6KNzBt8ySvfEC"},
      {:username=>"Mike", :password=>"$2a$12$uKI2KzIhziTd/sMrC8QPT.VCf4ApSynxCSvGpuA8Z2VLBJOU57zwW"}
  ]
  
  # Class methods need to be prefixed with 'self' for external use

  # Hash individual pw
  def self.create_hash(password)
    BCrypt::Password.create(password)
  end
 
  # Load hash
  def self.verify_hash(password)
    BCrypt::Password.new(password)
  end
 
  # Hash passwords of user list and store back in dict
  def self.secure_user_passwords(user_list)
      user_list.each do |user|
      user[:password] = create_hash(user[:password])
    end
    user_list
  end

  # Check if user credentials match username and hashed pw in users list
  def self.authenticate(un, pw, user_list)
    user_list.each do |user|
      if user[:username] = un && verify_hash(user[:password]) == pw
        return user
      end
    end
    return "Valid user not found"
  end    
end
