class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :summary, :length_of_title

  belongs_to :author
  has_many :comments

  def summary
    "Title: #{object.title} - Content: #{object.content}"
  end

  def length_of_title
    object.title.length
  end
end
