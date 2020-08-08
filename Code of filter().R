#Download the data set
mbaper<-read.csv("Enter ur path here")
#Enter ur path at which the dataset is available. Ex - "E:/coding_folder/R_folder/dataset_folder/Dataset_Mba.csv"

mbaper
str(mbaper)
dim(mbaper)
ta1<-table(mbaper$Gender)
ta1

#use the below code to get the data in terms of percentage of the whole data
ta1/nrow(mbaper)

ta2<-table(mbaper$Gender,mbaper$STATE)
ta2

ta3<-ftable(mbaper$Gender,mbaper$STATE,mbaper$Specialization)
ta3
#use ftable to present the data in a more attractive way


library(dplyr)
?select()

#to print particular variables
mbaper1<-select(mbaper,Gender)
mbaper1
mbaper2<-select(mbaper,Gender,pre_score)
mbaper2
mbaper3<-select(mbaper,Gender,pre_score,Specialization)
mbaper3
str(mbaper3)

#to remove omly 1 variable from the dataset and to print all other variable use - sign
mbaper4<-select(mbaper,-Gender)
mbaper4
mbaper5<-select(mbaper,3:7)
mbaper5

# to print all the data based on a condition use filter()
?dplyr::filter()

#to print all the data whose age is 20
mbaper6<-filter(mbaper,Age_in_years==20)
mbaper6
dim(mbaper6)
mbaper7<-filter(mbaper,Age_in_years!=20) #also we can use <,>,<=,>=
mbaper7
mbaper7$Age_in_years

mbaper8<-filter(mbaper,Gender=="Male")
mbaper8
mbaper8$Gender

mbaper9<-filter(mbaper,Specialization=="HR" & STATE=="South Zone")
mbaper9

mbaper10<-filter(mbaper,Specialization=="HR" | STATE=="South Zone")
mbaper10
dim(mbaper10)

