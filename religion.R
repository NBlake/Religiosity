#Data from:
#Religiosity - https://en.wikipedia.org/wiki/Importance_of_religion_by_country
#GPI - https://en.wikipedia.org/wiki/Global_Peace_Index
#NI_WFC - http://www.natureindex.com/country-outputs/generate/All/global/All/n_article
#GNI - https://en.wikipedia.org/wiki/List_of_countries_by_GNI_(nominal,_Atlas_method)_per_capita
#Homocide - https://en.wikipedia.org/wiki/List_of_countries_by_intentional_homicide_rate
#Majority Religion - http://www.infoplease.com/ipa/A0855613.html

# Create the variables and data frame 

Country <- c("Iceland", "New Zealand", "Austria", "Japan", "Sweden", "Denmark", "Finland", "Norway", "Canada", "Slovenia", "Switzerland", "Qatar", "Belgium", "Ireland", "Portugal", "Czech Republic", "Germany", "Singapore", "Australia", "Chile", "Oman", "Malaysia", "Slovakia", "Uruguay", "Hungary", "Romania", "Costa Rica", "Poland", "Netherlands", "United Arab Emirates", "Botswana", "Spain", "Taiwan", "Cyprus", "Lithuania", "Tunisia", "Kuwait", "Italy", "Croatia", "Estonia", "United Kingdom", "South Korea", "Bhutan", "Gabon", "Bosnia and Herzegovina", "Bulgaria", "Mozambique", "Vietnam", "Laos", "Latvia", "Malawi", "France", "Tanzania", "Libya", "Ghana", "Equatorial Guinea", "Bahrain", "Zambia", "Namibia", "Indonesia", "Argentina", "Greece", "Morocco", "Cuba", "Burkina Faso", "Panama", "Jordan", "Egypt", "Madagascar", "Albania", "Serbia", "Nicaragua", "Paraguay", "Moldova", "Senegal", "Nepal", "Trinidad and Tobago", "Peru", "Dominican Republic", "Montenegro", "Rwanda", "Bolivia", "China", "Angola", "Belarus", "Macedonia", "Brazil", "Mongolia", "Jamaica", "Turkmenistan", "Papua New Guinea", "El Salvador", "Bangladesh", "Guyana", "Cameroon", "Syria", "Kazakhstan", "Mexico", "Republic of the Congo", "Ukraine", "Cambodia", "Guatemala", "Uganda", "United States", "Ecuador", "Iran", "Mali", "Saudi Arabia", "Uzbekistan", "Algeria", "Kenya", "South Africa", "Ivory Coast", "Azerbaijan", "Venezuela", "Honduras", "Mauritania", "Philippines", "Thailand", "Haiti", "Yemen", "Myanmar", "Burundi", "Turkey", "India", "Sri Lanka", "Nigeria", "Lebanon", "Colombia", "Ethiopia", "Zimbabwe", "Central African Republic", "North Korea", "Georgia", "Chad", "Democratic Republic of the Congo", "Israel", "Russia", "Sudan", "Pakistan", "Somalia", "Afghanistan", "Iraq", "Mauritius", "Sierra Leone", "Timor-Leste", "Lesotho", "Togo", "Benin", "Liberia", "Kosovo", "Swaziland", "Gambia", "Guinea", "Armenia", "Niger", "Guinea-Bissau", "Djibouti", "Tajikistan", "Kyrgyzstan", "Eritrea", "Palestine", "South Sudan")
GPI <- c(1.203, 1.227, 1.240, 1.243, 1.253, 1.263, 1.297, 1.324, 1.324, 1.343, 1.349, 1.357, 1.365, 1.393, 1.426, 1.430, 1.438, 1.439, 1.440, 1.443, 1.468, 1.520, 1.532, 1.573, 1.574, 1.580, 1.595, 1.597, 1.609, 1.619, 1.634, 1.640, 1.64, 1.644, 1.669, 1.675, 1.686, 1.691, 1.693, 1.710, 1.716, 1.720, 1.722, 1.730, 1.735, 1.738, 1.762, 1.764, 1.767, 1.774, 1.776, 1.779, 1.782, 1.790, 1.795, 1.808, 1.815, 1.824, 1.837, 1.837, 1.846, 1.850, 1.856, 1.858, 1.860, 1.862, 1.864, 1.872, 1.886, 1.890, 1.906, 1.911, 1.950, 1.965, 1.967, 1.969, 1.985, 2.000, 2.004, 2.005, 2.025, 2.041, 2.045, 2.045, 2.046, 2.052, 2.058, 2.060, 2.065, 2.075, 2.075, 2.080, 2.082, 2.082, 2.111, 2.112, 2.141, 2.158, 2.161, 2.166, 2.178, 2.187, 2.188, 2.195, 2.197, 2.241, 2.250, 2.251, 2.274, 2.276, 2.297, 2.317, 2.320, 2.342, 2.348, 2.379, 2.388, 2.397, 2.399, 2.406, 2.416, 2.495, 2.536, 2.538, 2.554, 2.571, 2.599, 2.606, 2.625, 2.635, 2.700, 2.706, 2.771, 2.842, 2.959, 2.988, 3.012, 3.064, 3.086, 3.087, 3.269, 3.358, 3.370, 1.487, 1.818, 1.854, 1.864, 1.954, 2.231, 2.148, 1.969, 1.966, 1.890, 2.126, 2.266, 2.356, 2.105, 1.881, 2.225, 2.296, 2.227, 2.832, 2.576) 
#Global Peace Index, lower number more peaceful
Religiosity <-c(NA,33,55,24,17,19, 28,21,42,47,41,95,33,54,72,21,NA,70,32,40,70,96,47,41,39,84,79,75,33,91,77,49,75,45,70,42,93,91,72,27,43,16,NA,NA,77,34,86,30,97,39,99,30,89,NA,95,NA,94,95,92,99,65,71,97,34,88,88,96,97,93,39,54,84,92,72,93,96,92,84,87,71,95,89,88,23,34,76,87,NA,70,NA,80,83,100,NA,96,89,43,73,95,46,96,88,93,69,82,83,95,93,51,95,94,85,88,50,79,84,98,96,97,75,99,97,98,82,90,99,96,87,83,100,88,94,NA,81,95,94,51,34,93,92,98,97,84,98,NA,NA,NA,80,93,94,90,NA,NA,97,73,100,NA,98,85,72,NA,93,NA) 
#Is religion important in your daily life? Percent saying yes
GNI <- c(49730, 40080, 47120, 36680, 57810, 58590, 46360, 93820, 47500, 22610, 84180, 85430, 44360, 46680, 20530, 18050, 45790, 52090, 60070, 14060, 16920, 10570, 17310, 15720, 12990, 9500, 10210, 13370, 48940, 43170, 6510, 28520, 20925, 25930, 15000, 3970, 40930, 32790, 12690, 18480, 43340, 27440, 2370, 9210, 4680, 7220, 580, 1980, 1730, 14900, 350, 40580, 910, 6030, 1480, 7790, 20350, 1500, 5210, 3440, 12460, 20090, 3040, 5910, 660, 12050, 4680, 3340, 420, 4290, 5550, 1940, 4220, 2220, 1000, 730, 18600, 6200, 6130, 7240, 700, 3080, 7820, 4180, 7460, 5140, 9850, 3830, 5010, 7510, 2240, 3940, 1190, 4090, 1330, 1850, 11580, 9710, 2540, 2620, 1070, 3590, 670, 54960, 6010, 6550, 790, 23550, 2150, 4870, 1340, 6050, 1410, 6560, 11780, 2270, 1370, 3540, 5620, 820, 1300, 1280, 260, 9950, 1590, 3800, 2820, 7930, 7780, 590, 850, 320, 500, 4160, 880, 410, 35440, 11400, 1840, 1440, 150, 630, 5550, 9610, 630, 1920, 1330, 540, 860, 380, 3950, 3230, 470, 470, 3880, 390, 590, 1030, 1240, 1170, 530, 3090, 790) 
#Gross National Income, higher more wealthy
NI_WFC <- c(14.91,98.31,254.85,2652.16,467.21,277.73,159.15,118.94,1204.99,30.04,1091.06,8.39,339.23,94.70,116.35,140.31,3687.02,424.43,882.29,83.43,1.10,8.05,11.59,4.79,66.24,23.43,2.31,204.94,736.95,11.04,0.81,999.43,362.22,12.36,10.92,2.22,1.73,924.08,15.83,17.05,3096.36,965.53,0.17,0.53,0.75,11.16,0.13,9.07,0.16,2.88,0.67,1917.16,1.66,NA,0.75,NA,NA,0.32,0.05,8.67,91.43,75.14,9.23,0.88,1.04,7.06,1.22,9.06,0.45,0.08,11.48,NA,NA,0.56,1.07,2.78,0.59,4.12,NA,0.04,0.03,0.52,6205.82,0.22,2.89,1.42,219.71,0.13,1.34,NA,0.16,0.56,3.68,NA,0.50,0.31,4.25,69.97,0.29,24.03,1.26,0.21,0.90,15409.65,2.45,82.87,0.12,95.94,2.18,2.92,4.68,68.55,0.05,1.55,2.20,NA,0.24,2.40,31.98,NA,0.15,0.19,NA,62.78,888.17,0.74,1.14,4.24,17.04,1.50,0.08,NA,0.38,2.98,0.05,0.29,483.39,347.87,0.35,23.64,NA,NA,0.92,NA,0.70,NA,NA,NA,0.50,0.09,NA,0.17,0.55,0.17,8.06,NA,NA,0.13,0.27,0.28,0.07,0.13,NA) 
#Nature index, Weighted Fractional Count, higher more publications.
homocide <- c(0.3, 0.9, 0.5, 0.3, 0.9, 1.0, 1.6, 0.6, 1.4, 0.7, 0.5, 1.1, 1.8, 1.1, 0.9, 0.7, 0.9, 0.3, 1.0, 3.6, 1.1, 2.3, 1.1, 7.8, 1.5, 1.5, 10.0, 0.7, 0.7, 0.7, 15.4, 0.7, 3.0, 1.1, 5.5, 3.1, 0.4, 0.8, 0.8, 3.1, 0.9, 0.7, 2.7, 9.4, 1.3, 1.6, 3.7, 1.6, 5.9, 3.9, 1.8, 1.2, 8.2, 2.5, 1.7, 3.6, 0.5, 6.2, 17.2, 0.5, 7.6, 1.1, 1.0, 4.2, 0.7, 17.2, 2.0, 3.4, 0.6, 4.0, 1.3, 11.3, 8.8, 3.2, 8.1, 2.9, 25.9, 6.7, 17.4, 3.2, 4.6, 12.1, 0.8, 10.8, 3.6, 1.6, 24.6, 7.5, 36.1, 12.8, 10.4, 64.2, 2.8, 17.0, 2.8, 2.2, 7.8, 15.7, 10.5, 4.3, 6.5, 31.2, 11.8, 3.9, 8.2, 3.9, 11.2, 0.8, 3.7, 1.5, 5.9, 33.0, 12.4, 2.5, 62.0, 84.6, 11.4, 9.9, 3.9, 10.2, 4.8, 15.2, 4.0, 4.3, 3.2, 3.4, 10.3, 4.3, 27.9, 8.1, 7.5, 13.6, 5.2, 2.7, 9.4, 13.5, 1.7, 9.5, 6.5, 7.7, 5.6, 6.5, 8.0, 2.7, 1.8, NA, 38.0, 9.4, 6.3, 3.3, 2.2, 17.4, 9.6, 9.0, 1.8, 4.7, 10.3, 7.0, 1.6, 3.7, 7.8, 7.4, 14.4) 
#Homocide rate
maj_rel <- c("Prot", "Prot", "Catholic", "Buddhist", "Prot", "Prot", "Prot", "Prot", "Catholic", "Catholic", "Catholic", "Sunni", "Catholic", "Catholic", "Catholic", "None", "Prot", "Buddhist", "Catholic", "Catholic", "Ibadi", "Sunni", "Catholic", "Catholic", "Catholic", "Catholic", "Catholic", "Catholic", "Catholic", "Sunni", "Prot", "Catholic", "Buddhist", "Orthodox", "Catholic", "Sunni", "Sunni", "Catholic", "Catholic", "Prot", "Prot", "None", "Buddhist", "Catholic", "Sunni", "Orthodox", "Prot", "None", "Buddhist", "Catholic", "Catholic", "Catholic", "Indigenous", "Sunni", "Prot", "Catholic", "Shia", "Prot", "Prot", "Sunni", "Catholic", "Orthodox", "Sunni", "Catholic", "Sunni", "Catholic", "Sunni", "Sunni", "Indigenous", "Sunni", "Orthodox", "Catholic", "Catholic", "Orthodox", "Sunni", "Buddhist", "Catholic", "Catholic", "Catholic", "Orthodox", "Catholic", "Catholic", "None", "Indigenous", "Orthodox", "Orthodox", "Catholic", "Buddhist", "Prot", "Sunni", "Catholic", "Catholic", "Sunni", "Prot", "Catholic", "Sunni", "Sunni", "Catholic", "Catholic", "Orthodox", "Buddhist", "Catholic", "Catholic", "Prot", "Catholic", "Shia", "Sunni", "Sunni", "Sunni", "Sunni", "Prot", "Prot", "Sunni", "Shia", "Catholic", "Catholic", "Sunni", "Catholic", "Buddhist", "Catholic", "Sunni", "Buddhist", "Catholic", "Sunni", "Hindu", "Buddhist", "Prot", "Shia", "Catholic", "Orthodox", "Prot", "Prot", "NA", "Orthodox", "Sunni", "Catholic", "Jewish", "Orthodox", "Sunni", "Sunni", "Sunni", "Sunni", "Shia", "Hindu", "Sunni", "NA", "Catholic", "Indigenous", "Indigenous", "Prot", "Sunni", "Indigenous", "Sunni", "Sunni", "Orthodox", "Sunni", "Sunni", "Sunni", "Sunni", "Sunni", "Sunni", "Sunni", "Catholic")
#Majority religion (per 100,000)

Rel <- data.frame(Country,GPI,Religiosity,NI_WFC,GNI,homocide,maj_rel)
head(Rel)

Rel[83, 3] = 12 #As China was entered incorrectly

install.packages("ggplot2")
library(ggplot2)

# Visualise scatterplots 
pairs(Rel[2:6], main="Simple Scatterplot")

#Boxplot homocide rate by religious denomination
ggplot(Rel, aes(x = maj_rel, y = homocide)) +
  geom_boxplot() +
  ggtitle("Homocide rate by religious denomination") +
  scale_y_continuous(name = "Homocide rate per 100,000",
                     breaks = seq(0, 40, 10),
                     limits = c(0,40)) +
  scale_x_discrete(name = "Majority religion")

# Scatterplot religiosity and homocide rate
ggplot(Rel, aes(y=homocide, x=Religiosity)) +
  geom_point(shape=1) +    
  geom_smooth(method=lm) 
  

# Boxplot religiosity by religious denomination
ggplot(Rel, aes(x = maj_rel, y = Religiosity)) +
  geom_boxplot() +
  ggtitle("Religiosity by dominant religious denomination") +
  scale_y_continuous(name = "Percent of population religious",
                     breaks = seq(0, 100, 10),
                     limits = c(0,100)) +
  scale_x_discrete(name = "Majority religion")

#Boxplot global peace index by religious denomination
ggplot(Rel, aes(x = maj_rel, y = GPI)) +
  geom_boxplot() +
  ggtitle("Global Peace Index by religious denomination") +
  scale_y_continuous(name = "Global Peace Index") +
  scale_x_discrete(name = "Majority religion")

# Scatterplot religiosity and Global Peace Index
ggplot(Rel, aes(y=GPI, x=Religiosity, color=maj_rel)) +
  geom_point() +    
  geom_smooth(method=lm) 

# Same but with some maj_rels removed

lessRel <- Rel[!(Rel$maj_rel=="Ibadi" | Rel$maj_rel=="NA" | Rel$maj_rel=="Indigenous" | Rel$maj_rel=="Hindu"),]
qplot(Religiosity, GPI, data=lessRel, colour=maj_rel) + scale_color_manual(values = c("yellow","purple", "violet", "black", "orange", "red","light green","dark green")) 
abline(lm(Religiosity ~ GPI, data=lessRel))

# Now with overall regression line
coef(lm(GPI ~ Religiosity, data = lessRel)) #For the line parameters
ggplot(lessRel, aes(y=GPI, x=Religiosity, color=maj_rel)) +
  geom_point() + scale_color_manual(values = c("yellow","purple", "violet", "black", "orange", "red","light green","dark green")) +
  scale_y_continuous(name = "Global Peace Index") + geom_abline(intercept = 1.36, slope = 0.01) +
  ggtitle("Religiosity vs GPI with regression line") + geom_text(aes(label=Country))
 

coef(lm(GPI ~ Religiosity, data = lessRel))
fitline <- predict(lm(GPI ~ Religiosity, data = lessRel))
fitline <- lm(GPI ~ Religiosity, data = lessRel)


summary(fitline)

# Scatterplot GNI and Global Peace Index
ggplot(Rel, aes(y=GPI, x=GNI)) +
  geom_point(shape=1) +    
  geom_smooth(method=lm) 
qplot(GNI, GPI, data=lessRel, colour=maj_rel) + scale_color_manual(values = c("yellow","purple", "violet", "black", "orange", "red","light green","dark green"))



# 3D scatterplot of GNI, GPI and religiosity
install.packages(c("rgl", "car"))
library(car)
library(rgl)
scatter3d(x=GNI,y=GPI,z=Religiosity)
install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(x=GNI,y=GPI,z=Religiosity)


# Scatterplot GNI and Global Peace Index
ggplot(Rel, aes(y=NI_WFC, x=Religiosity)) +
  geom_point(shape=1) +    
  geom_smooth(method=lm) 

# Scatterplot GNI and Global Peace Index
ggplot(Rel, aes(y=NI_WFC, x=GNI)) +
  geom_point(shape=1) +    
  geom_smooth(method=lm) 

# PCA
prcomp <- 

hom_vs_rel <- lm(homocide ~ Religiosity + GNI, data = Rel)
summary(hom_vs_rel)

gpi_vs_rel <- lm(GPI ~ Religiosity + GNI, data = Rel)
summary(gpi_vs_rel)

write.table(Rel, "Religion.txt", sep="\t")


# Load theBearded data
relco <- read.table("relco.txt",header = T, fill = T)

# All the suicide rank data look strongly correlated, particulalry the male and overall suicide rate, probably because the are just more male suicides.
# Drop some of the heavily correlated variables 
sui <- data.frame(relco$country,relco$both_sexes_rank_suicide, relco$violent_crime_rate)


# Merge the two dataframes (first identifying those countries not in the latter DF)
# First replace entries with _ for blank spaces in the country names so the 2 data frames match
relco$country <- gsub("_", " ", relco$country)

Rel[c("suicide","violent_crime")] <- NA
sui[c("GPI","Religiosity","NI_WFC","GNI")] <- NA #Creates new columns in both DFs so they match
names(sui)[names(sui)=="relco.country"] <- "Country"
names(sui)[names(sui)=="relco.both_sexes_rank_suicide"] <- "suicide"
names(sui)[names(sui)=="relco.violent_crime_rate"] <- "violent_crime" #Change some variable names and the dataframes now match

Religion <- merge(Rel, sui, by = "Country")

new_countries <- subset(Rel, !(Rel$Country %in% relco$country))

rbind(relco,new_countries$Country)

rbind(new_countries, relco)
