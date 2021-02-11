json.extract! comment, :id, :text, :user_id, :article_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
