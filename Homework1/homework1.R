

#if didn't find file, download it
if(!file.exists("zip.test.gz")){
  download.file(
    "https://web.stanford.edu/~hastie/ElemStatLearn/datasets/zip.test.gz",
    "zip.test.gz"
  )
}

#if we didn't in stll data.table package, we install it
if(FALSE){
  install.packages("data.table")
}

# use data.table::fread to read the compressed CSV data file into R as a data table.
dt<- read.table("zip.test.gz")

#To exclude the label column (that is the first column).
colnames(dt) <- c()

#Convert the data table to a numeric matrix

X.mat <- as.matrix(dt)

#Use utils::str to print a compact representation of the structure of your numeric matrix.
str(X.mat)




