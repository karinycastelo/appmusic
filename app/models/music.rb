class Music < ApplicationRecord
  attr_reader :cover_remote_url

  has_attached_file :cover,
                    :styles => {
                      medium: "300x300>", thumb: "100x100>"
                    },
                    content_type: { content_type: "image/png" },
                    default_url: "/images/:style/missing.png"
                    # :url => "/images/:id/:style/:title.:extension",
                    # :path => ":rails_root/public/controllers/:style/:basename.:extension"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  def cover_url
    cover.url(:medium)
  end

  def cover_from_url(url)
    cover = URI.parse(url)
    cover_remote_url = url_value
  end
end
