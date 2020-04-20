mytranspose <- function(x) {
  
  input_str <- 1
  
  if (is.vector(x)) {
    x <- matrix(x, byrow = FALSE, ncol = 1)
    input_str <- 2
  } else if (is.data.frame(x)) {
    x <- as.matrix(x)
  }
  
  y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
  for(i in 1:nrow(x)) {
    for(j in 1:ncol(x)) {
      y[j,i] <- x[i,j]
    }
  }
  

  if(input_str == 2) {
    y <- as.data.frame(y)
  }
  
  return(y)
}
