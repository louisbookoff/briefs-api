class BriefSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :body_text, :created_at, :updated_at
end
