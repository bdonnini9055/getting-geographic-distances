library(ggmap)

##################################################################################
# Boston, MA
##################################################################################

boston <- read.csv("boston.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
boston$Address <- as.character(boston$Address)

boston$Address <- gsub("[^0-9A-Za-z///' ]", "", boston$Address)

#Define the data frame to hold the distances
boston.dist.tester <- mapdist(boston$Address[1], 'boston, ma', mode ="driving", output="simple")

for(i in 1:nrow(boston)){
temp <- mapdist(boston$Address[i], 'boston, ma', mode ="driving", output="simple")
  
boston.dist.tester <- rbind(boston.dist.tester, temp)
  }

boston.dist.tester <- boston.dist.tester[-1,]
final.boston <- cbind(boston, boston.dist.tester)

# sort by distance
final.boston <- final.boston[order(final.boston$hours),]
write.csv(final.boston, "boston-schools-within-one-hour.csv")

##################################################################################
# Dallas, TX
##################################################################################

dallas <- read.csv("dallas.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
dallas$Address <- as.character(dallas$Address)

dallas$Address <- gsub("[^0-9A-Za-z///' ]", "", dallas$Address)

#Define the data frame to hold the distances
dallas.dist.tester <- mapdist(dallas$Address[1], 'dallas, tx', mode ="driving", output="simple")

for(i in 1:nrow(dallas)){
  temp <- mapdist(dallas$Address[i], 'dallas, tx', mode ="driving", output="simple")
  
  atlanta.dist.tester <- rbind(dallas.dist.tester, temp)
}

dallas.dist.tester <- dallas.dist.tester[-1,]
final.dallas <- cbind(dallas, dallas.dist.tester)

# sort by distance
final.dallas <- final.dallas[order(final.dallas$hours),]
write.csv(final.dallas, "dallas-schools-within-one-hour.csv")


##################################################################################
# Atlanta, GA
##################################################################################

atlanta <- read.csv("atlanta.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
atlanta$Address <- as.character(atlanta$Address)

atlanta$Address <- gsub("[^0-9A-Za-z///' ]", "", atlanta$Address)

#Define the data frame to hold the distances
atlanta.dist.tester <- mapdist(atlanta$Address[1], 'atlanta, ga', mode ="driving", output="simple")

for(i in 1:nrow(atlanta)){
  temp <- mapdist(atlanta$Address[i], 'atlanta, ga', mode ="driving", output="simple")
  
  atlanta.dist.tester <- rbind(atlanta.dist.tester, temp)
}

atlanta.dist.tester <- atlanta.dist.tester[-1,]
final.atlanta <- cbind(atlanta, atlanta.dist.tester)

# sort by distance
final.atlanta <- final.atlanta[order(final.atlanta$hours),]
write.csv(final.atlanta, "atlanta-schools-within-one-hour.csv")


##################################################################################
# seattle, WA
##################################################################################

seattle <- read.csv("seattle.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
seattle$Address <- as.character(seattle$Address)

seattle$Address <- gsub("[^0-9A-Za-z///' ]", "", seattle$Address)

#Define the data frame to hold the distances
seattle.dist.tester <- mapdist(seattle$Address[1], 'seattle, wa', mode ="driving", output="simple")

for(i in 1:nrow(seattle)){
  temp <- mapdist(seattle$Address[i], 'seattle, wa', mode ="driving", output="simple")
  
  seattle.dist.tester <- rbind(seattle.dist.tester, temp)
}

seattle.dist.tester <- seattle.dist.tester[-1,]
final.seattle <- cbind(seattle, seattle.dist.tester)

# sort by distance
final.seattle <- final.seattle[order(final.seattle$hours),]
write.csv(final.seattle, "seattle-schools-within-one-hour.csv")



##################################################################################
# Miami, FL
##################################################################################

miami <- read.csv("miami.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
miami$Address <- as.character(miami$Address)

miami$Address <- gsub("[^0-9A-Za-z///' ]", "", miami$Address)

#Define the data frame to hold the distances
miami.dist.tester <- mapdist(miami$Address[1], 'miami, fl', mode ="driving", output="simple")

for(i in 1:nrow(miami)){
  temp <- mapdist(miami$Address[i], 'miami, fl', mode ="driving", output="simple")
  
  miami.dist.tester <- rbind(miami.dist.tester, temp)
}

miami.dist.tester <- miami.dist.tester[-1,]
final.miami <- cbind(miami, miami.dist.tester)

# sort by distance
final.miami <- final.miami[order(final.miami$hours),]
write.csv(final.miami, "miami-schools-within-one-hour.csv")


##################################################################################
# charlotte, nc
##################################################################################

charlotte <- read.csv("charlotte.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
charlotte$Address <- as.character(charlotte$Address)

charlotte$Address <- gsub("[^0-9A-Za-z///' ]", "", charlotte$Address)

#Define the data frame to hold the distances
charlotte.dist.tester <- mapdist(charlotte$Address[1], 'charlotte, nc', mode ="driving", output="simple")

for(i in 1:nrow(charlotte)){
  temp <- mapdist(charlotte$Address[i], 'charlotte, nc', mode ="driving", output="simple")
  
  charlotte.dist.tester <- rbind(charlotte.dist.tester, temp)
}

charlotte.dist.tester <- charlotte.dist.tester[-1,]
final.charlotte <- cbind(charlotte, charlotte.dist.tester)

# sort by distance
final.charlotte <- final.charlotte[order(final.charlotte$hours),]
write.csv(final.charlotte, "charlotte-schools-within-one-hour.csv")


##################################################################################
# San Francisco, CA
##################################################################################

sanfrancisco <- read.csv("sanfrancisco.csv",colClasses="factor")

# If you don't have the address in one cell
# ma$whole.address <- paste(as.character(ma$FirstLine),as.character(ma$City))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$State))
# ma$whole.address <- paste(ma$whole.address, as.character(ma$ZIPCode))

# Set the address to be a character vector for later use
sanfrancisco$Address <- as.character(sanfrancisco$Address)

sanfrancisco$Address <- gsub("[^0-9A-Za-z///' ]", "", sanfrancisco$Address)

#Define the data frame to hold the distances
sanfrancisco.dist.tester <- mapdist(sanfrancisco$Address[1], 'sanfrancisco, ca', mode ="driving", output="simple")

for(i in 1:nrow(sanfrancisco)){
  temp <- mapdist(sanfrancisco$Address[i], 'sanfrancisco, ca', mode ="driving", output="simple")
  
  sanfrancisco.dist.tester <- rbind(sanfrancisco.dist.tester, temp)
}

sanfrancisco.dist.tester <- sanfrancisco.dist.tester[-1,]
final.sanfrancisco <- cbind(sanfrancisco, sanfrancisco.dist.tester)

# sort by distance
final.sanfrancisco <- final.sanfrancisco[order(final.sanfrancisco$hours),]
write.csv(final.sanfrancisco, "sanfrancisco-schools-within-one-hour.csv")
