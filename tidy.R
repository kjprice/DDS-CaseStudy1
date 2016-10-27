# tidy dirty data
# import raw gdp file, skip first five erroneous rows and ignore header
gdp = read.csv('data/gdp-raw.csv', header =  FALSE, skip = 5)

# take only relevent data from gdp data frame, make sure that CountryGdp is numeric
CountryCode = gdp$V1
CountryGdp = as.numeric(gsub("[^[:digit:]]","", gdp$V5))

# create a new data frame with the clean gdp variables above
clean.gdp = data.frame(CountryCode, CountryGdp)

# save the csv to be used later (in merge.R)
write.csv(merged.data, 'data/gdp-clean.csv')
