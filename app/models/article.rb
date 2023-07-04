class Article < ApplicationRecord
  before_create :set_slug

  def set_slug
    self.slug = title.parameterize
  end

  def to_api_json
    {
      slug: slug,
      title: title,
      description: description,
      body: body,
      createdAt: created_at,
      updatedAt: updated_at
    }
  end
end
