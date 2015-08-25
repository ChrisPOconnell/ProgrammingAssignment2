##Chris P. OConnell
##8/20/2015

##I've made the makeCacheMatrix really nice for you.
##No need to send any complicated argument in.  Just 
##type in the numbers you want in the matrix.
##I'll check to see if the matrix can be square.
##If the numbers can't create a square matrix I'll
##let you know.
##example:  mat <- makeCacheMatrix(1:100)
##te that there is no set function in here.  I found the function
##was a it redundant and just performed the set instructions
##when makeCacheMatrix is used to create an object.
In this case I will create a nice 10x10 matrix for you.

##Also no
makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL                      #This is required to prevent a previously defined
                                    #invm from returning and falsey being reported
                                    #as the inversion of our current matrix.
  len <- length(x)                  #Determines length of x (the argument passed into function).
                                    #Used for two things:
                                    #1st, determine if matrix can be square
                                    #2nd, create  sq
  sq <- sqrt(len)           
  mod <- sqrt(len) %% 1             #This determines if the matrix can be square
  if (mod!=0){
    print("Sorry, the values you provided can't create a square matrix.")
  }
  else {
    mt<- matrix(x,nrow=sq,ncol=sq) #using the square root of the values you provide
                                   #a square matrix 
    xvalues<<-x

    getmat <- function() return(mt)
    setinvm <- function(matvalue) invm <<- solve(matvalue)
    
    
    getinvm <- function() invm                
    getxvalues <- function() print(xvalues)
  }
  
  #  I wasn't able to get this function working, but was attempting to 
  #  create a function that multiplies the inverse and the regular matrix.
  multiplymatrixes <- function() {
    mni <- getmat()
    mi <- getinvm()
    mi %*% mni
  }
  
  #This code creates a list of what functions are available for
  #the object created with makeCacheMatrix
  list(setinvm = setinvm,
       getmat = getmat,
       getinvm = getinvm,
       getxvalues = getxvalues,
       multiplymatrixes = multiplymatrixes)
}      

## Computes the inverse of the "special matrix" returned by makeCacheMatrix above  
## This function computes the inverse of the "special matrix" returned by makeCacheMatrix above  
  

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinvm()
  if(!is.null(m)) {                   #This if statement checks to see if x's 
                                      #invm was ever set.  If it's not NULL
                                      #then return the already calculated value.
    message("getting cached data")
    return(m)
  }
  data <- x$getmat()                  
  m <- solve(data)
  x$setinvm(m)                        #this is really cool!  This line hands the calculated
                                      #inverse matrix back to the object, setting the invm.
                                      #If you hadn't already run mat$setinvm() on you can now
                                      #run mat$getinvm() and you'll see the inverse has been set.
  m
}