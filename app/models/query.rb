class Query < ApplicationRecord

  def description
    [keyword, address].reject(&:blank?).join(' near ')
  end

end
