module DestinationsHelper
  def normalize_country(country)
    country.split('_').map(&:capitalize).join(' ')
  end

  def destinations_in_country(country)
    normalized_country = normalize_country(country)

    [:itself, :upcase, :downcase].each do |f|
      destinations = Destination.where(:country => normalized_country.send(f))
      return destinations if destinations && destinations != []
    end
  end
end
