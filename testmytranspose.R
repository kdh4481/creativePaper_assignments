howmanyTest <- 8
successCount <- 0

# input
input1 <-  matrix(1:10, nrow=5, ncol=2)
input2 <-  matrix(NA, nrow=0, ncol=0)
input3 <-  matrix(c(1,2), nrow=1, ncol=2)
input4 <-  matrix(c(1,2), nrow=2, ncol=1)
input5 <- c(1,2,NA,3)
input6 <- c(NA)
input7 <- c()
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
input8 <- data.frame(d,e,f)

# output
output1 <- mytranspose(input1)
output2 <- mytranspose(input2)
stroutput3 <- mytranspose(input3)
output4 <- mytranspose(input4)
output5 <- mytranspose(input5) 
output6 <- mytranspose(input6)
output7 <- mytranspose(input7)
output8 <- mytranspose(input8)

# answer
answer1 <- matrix(1:10, nrow=2, byrow = TRUE)
answer2 <- matrix(NA, nrow=0, ncol=0)
answer3 <- matrix(c(1,2), nrow=2, ncol=1)
answer4 <- matrix(c(1,2), nrow=1, ncol=2)
answer5 <- matrix(input5, nrow=1) 
answer6 <- matrix(input6, nrow=0, ncol=0)
answer7 <- c()
answer8 <- as.data.frame(t(input8))

  #test1
notsameCount1 <- 0
answer <- answer1
output <- output1
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount1 <- notsameCount1 + 1
    }
  }
}

#test2
notsameCount2 <- 0
answer <- answer2
output <- output2
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount2 <- notsameCount2 + 1
    }
  }
}

#test3
notsameCount3 <- 0
answer <- answer3
output <- output3
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount3 <- notsameCount3 + 1
    }
  }
}

#test4
notsameCount4 <- 0
answer <- answer4
output <- output4
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount4 <- notsameCount4 + 1
    }
  }
}

#test5
notsameCount5 <- 0
answer <- answer5
output <- output5
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount5 <- notsameCount5 + 1
    }
  }
}

#test6
notsameCount6 <- 0
answer <- answer6
output <- output6
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount6 <- notsameCount6 + 1
    }
  }
}

#test7
notsameCount7 <- 0
answer <- answer7
output <- output7
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount7 <- notsameCount7 + 1
    }
  }
}

#test8
notsameCount8 <- 0
answer <- answer8
output <- output8
for(i in 1:nrow(answer)) {
  for(j in 1:ncol(answer)) {
    if (output[i,j] != answer[i,j]) {
      notsameCount8 <- notsameCount8 + 1
    }
  }
}

if (notsameCount1 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : matrix -> Success!")
} else {
  print("TransposeTest : matrix -> Fail!")
}
if (notsameCount2 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : matrix_NA -> Success!")
} else {
  print("TransposeTest : matrix_NA -> Fail!")
}
if (notsameCount3 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : matrix_row -> Success!")
} else {
  print("TransposeTest : matrix_row -> Fail!")
}
if (notsameCount4 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : matrix_col -> Success!")
} else {
  print("TransposeTest : matrix_col -> Fail!")
}
if (notsameCount5 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : vector -> Success!")
} else {
  print("TransposeTest : vector -> Fail!")
}
if (notsameCount6 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : vector_NA -> Success!")
} else {
  print("TransposeTest : vector_NA -> Fail!")
}
if (notsameCount7 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : vector_null -> Success!")
} else {
  print("TransposeTest : vector_null -> Fail!")
}
if (notsameCount8 == 0) {
  successCount <- successCount + 1
  print("TransposeTest : dataframe -> Success!")
} else {
  print("TransposeTest : dataframe -> Fail!")
}

print("Tests run: ")
print(howmanyTest)
print("Failure: ")
print(howmanyTest-successCount)
