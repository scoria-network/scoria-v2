# Collection of utility functions

def get_posts num_posts=Post.to_a.length
  return Post.to_a.reverse[-num_posts..-1]
end

def valid_email_address? address
  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  return true if valid_email_regex.match address
  return false
end

def create_user primary_email, first_name, last_name, password, cpassword
  if !valid_email_address? primary_email
    return 'bad email'
  end
  if password != cpassword
    return 'passwords do not match'
  end
  
  User.create :primary_email => primary_email,
              :first_name    => first_name,
              :last_name     => last_name,
              :password      => password
end
