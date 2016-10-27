
# create the folder that all the data will live in
dir.create('data')

# the Gross Domestic Product data for the 190 ranked countries in this data set
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv', 'data/gdp-raw.csv')

#Load the educational data from this data set:
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv', 'data/education-raw.csv')
