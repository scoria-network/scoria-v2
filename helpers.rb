# Collection of utility functions

def get_posts num_posts=Post.to_a.length
  return Post.to_a.reverse[-num_posts..-1]
end
