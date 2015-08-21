##Chris P. OConnell
##8/20/2015

##I've made the makeCacheMatrix really nice for you.
##No need to send any complicated argument in.  Just 
##type in the numbers you want in the matrix.
##I'll check to see if the matrix can be square.
##If the numbers can't create a square matrix I'll
##let you know.
##example:  mat <- makeCacheMatrix(1:100)
##In this case I will create a nice 10x10 matrix for you.

makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL                      #This is required to prevent a previously defined
                                    #invm from returning and falsey being reported
                                    #as the inversion of our current matrix.
  len <- length(x)                  #Determines length of x.
                                    #Used for two things:
                                    #1st, determine if matrix can be square
                                    #2nd, create  sq
  sq <- sqrt(len)           
  mod <- sqrt(len) %% 1              #This determines if the matrix can be square
  if (mod!=0){
    print("Sorry, the values you provided can't create a square matrix.")
  }
  else {
  #if (mod == 0 && len!=0) { #If matrix can be square, enter perform if statement.
      mt<- matrix(x,nrow=sq,ncol=sq) #using the square root of the values you provide
                                      #a square matrix 
      xvalues<<-x
      #print("Congrats, your thingy is created")
      
      getmat <- function() return(mt)
      setinvm <- function(matvalue) invm <<- solve(matvalue)
                                                
                                                
      getinvm <- function() invm                
      getxvalues <- function() print(xvalues)

  }
  
  #  I wasn't able to get this function working, but was attempting to 
  #  create a function 
  multiplymatrixes <- function() {
    mni <- getmat()
    mi <- getinvm()
    mi %*% mni
  }
      
      list(setinvm = setinvm,
           getmat = getmat,
           getinvm = getinvm,
           getxvalues = getxvalues,
           multiplymatrixes = multiplymatrixes)
  }      
  
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinvm()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getmat()
  m <- solve(data)
  x$setinvm(m)
  m
}