module DestinationsHelper
  def normalize_country(country)
    country.split('_').map(&:capitalize).join(' ')
  end

  def destinations_in_country(country)
    normalized_country = normalize_country(country)
    destinations = Destination.where(:country => normalized_country)
    destinations = Destination.where(:country => normalized_country.upcase) if destinations == []
    destinations = Destination.where(:country => normalized_country.downcase) if destinations == []
    destinations
  end
end
