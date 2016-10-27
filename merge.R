# import raw education file
education = read.csv('data/education-raw.csv')
# import cleaned gdp data
gdp = read.csv('data/gdp-clean.csv')

# merge the data using the mutual variable "CountryCode"
merged.data = merge(education, gdp, By="CountryCode")

# create a new data frame with only the data we want
CountryCode = merged.data$CountryCode
GDP = merged.data$CountryGdp
IncomeGroup = merged.data$Income.Group
final.data = data.frame(CountryCode, GDP, IncomeGroup)

# save the data to be used in analysis
write.csv(final.data, 'data/Countries.csv')