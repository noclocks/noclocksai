ressult <- gmaps_geocode_address("1600 Amphitheatre Parkway, Mountain View, CA")
print(result$formatted_address)
print(paste0("Coordinates: ", result$latitude, ", ", result$longitude))
