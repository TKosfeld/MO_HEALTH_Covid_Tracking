# scrape zip code data - other approaches ####

## authorship
## Saint Louis University students Alvin Do, Eric Quach, and Metta Pham all
## contributed to this script and the underlying functions it calls.

#===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===#

# Missouri ZIPs, Kansas City Area ####

## Clay
clay_zips <- get_zip(state = "MO", county = "Clay")
write_csv(clay_zips, paste0("data/source/kc_daily_zips/clay_", date, ".csv"))

## Kansas City
kc_zips <- get_zip(state = "MO", county = "Kansas City")
write_csv(kc_zips, paste0("data/source/kc_daily_zips/kansas_city_", date, ".csv"))

## clean-up
rm(clay_zips, kc_zips)
rm(get_zip_clay, get_zip_kc)

#===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===#

# Missouri ZIPs, St. Louis Area ####

## Franklin County

## Jefferson County
# jefferson_zips <- get_zip(state = "MO", county = "Jefferson")
# write_csv(jefferson_zips, paste0("data/source/stl_daily_zips/jefferson_", date, ".csv"))

## Lincoln County
lincoln_zips <- get_zip(state = "MO", county = "Lincoln")
write_csv(lincoln_zips, paste0("data/source/stl_daily_zips/lincoln_", date, ".csv"))

## St. Louis City
stl_city_zips <- get_zip(state = "MO", county = "St. Louis City")
write_csv(stl_city_zips, paste0("data/source/stl_daily_zips/stl_city_", date, ".csv"))

## St. Louis County
stl_county_zips <- get_zip(state = "MO", county = "St. Louis County")
write_csv(stl_county_zips, paste0("data/source/stl_daily_zips/stl_county_", date, ".csv"))

## Warren County
# warren_zips <- get_zip(state = "MO", county = "Warren")
# write_csv(warren_zips, paste0("data/source/stl_daily_zips/warren_", date, ".csv"))

## clean-up
rm(lincoln_zips, stl_city_zips, stl_county_zips) # warren_zips jefferson_zips
rm(get_zip_warren, get_zip_lincoln, get_zip_jefferson,
   get_zip_st_louis_city, get_zip_st_louis_county, get_zip_franklin)

#===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===#

# Kansas ZIPs ####

## Johnson County
johnson_zips <- get_zip(state = "KS", county = "Johnson")
write_csv(johnson_zips, paste0("data/source/kc_daily_zips/johnson_", date, ".csv"))

## Wyandotte County
wyandotte_zips <- get_zip(state = "KS", county = "Wyandotte")
write_csv(wyandotte_zips, paste0("data/source/kc_daily_zips/wyandotte_", date, ".csv"))

## clean-up
rm(johnson_zips, wyandotte_zips)
rm(get_zip_johnson, get_zip_wyandotte)

#===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===#

# Illinois ZIPs ####

il_zips <- read_csv(file = paste0(downloads_path, "/Illinois Data.csv")) %>%
  clean_names() %>%
  select(zip, total_cases) %>%
  rename(count = total_cases)

write_csv(il_zips, paste0("data/source/il_daily_zips/il_zips_", date, ".csv"))

rm(il_zips)

#===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===# #===#

# final clean-up ####
rm(get_zip)
