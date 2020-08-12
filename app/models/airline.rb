class Airline < ApplicationRecord
  has_many :reviews
  
  before_create -> (airline) do
    airline.slug = airline.name.parameterize
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end

end
