json.array!(@blogs) do |blog|
<<<<<<< HEAD
  json.extract! blog, :id
=======
  json.extract! blog, :id, :title, :content
>>>>>>> d37d7472caf77aed29ed69d7a925d3d25e1a29c8
  json.url blog_url(blog, format: :json)
end
