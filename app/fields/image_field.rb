require "administrate/field/base"

class ImageField < Administrate::Field::Base

  def default_url
      'default.png'
  end

  def url
    if data.url.present?
      data.url
    else
      default_url
  end
  end

  def to_s
    data
  end
end
