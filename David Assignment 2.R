
makeCacheMatrix <- function(x = matrix()) {
  l<-length(x)   #return the length of x
  numrow=sqrt(l) #square root of length of matrix values, to be used as nrow parameter
  numcol=sqrt(l) #square root of length of matrix values, to be used as ncol parameter
  mod=sqrt(l)%%1 #calculate modulus of the length of matrix values (if it's 0 or not)
  if (mod!=0){print("Error:square matrix can not be created with the length of the values")}
  #if mod is not 0, inform user the value supplied can not be converted to a square matrix
  else {
        invm<<-NULL
        mx<<-matrix(x,numrow,numcol) #if mod is 0 then go ahead and create 
        setmx<-function(y){mx<<-y    #a matrix called mx
                          invm<<-NULL}
        getmx<-function()mx
        setinvm<-function()invm<<-solve(mx) #investigate this............
        getinvm<-function()invm
        list(setmx = setmx, getmx = getmx,
             setinvm = setinvm,
             getinvm = getinvm)
       
                                      }
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}


x<-80
a<-sqrt(x)
