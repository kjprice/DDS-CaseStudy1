# tidy dirty data

# import raw education file
education = read.csv('data/education-raw.csv')

# remove empty rows from education
clean.education = education[education$Income.Group != '',]
education.data.to.keep = c('CountryCode', 'Income.Group')
clean.education = clean.education[education.data.to.keep]


# import raw gdp file, skip first five erroneous rows and ignore header
gdp = read.csv('data/gdp-raw.csv', header =  FALSE, skip = 5)

# take only relevent data from gdp data frame, make sure that CountryGdp is numeric
CountryCode = gdp$V1
CountryGdp = as.numeric(gsub("[^[:digit:]]","", gdp$V5))

# create a new data frame with the clean gdp variables above
clean.gdp = data.frame(CountryCode, CountryGdp)

# remove null rows from gdp
clean.gdp = clean.gdp[complete.cases(clean.gdp$CountryGdp),]

# save the csv to be used later (in merge.R)
write.csv(clean.gdp, 'data/gdp-clean.csv', quote = FALSE, row.names = FALSE)
write.csv(clean.education, 'data/education-clean.csv', quote = FALSE, row.names = FALSE)