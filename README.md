##I've made the makeCacheMatrix really nice for you.
##No need to send any complicated argument in.  Just 
##type in the numbers you want in the matrix.
##I'll check to see if the matrix can be square.
##If the numbers can't create a square matrix I'll
##let you know.
##example:  mat <- makeCacheMatrix(1:100)
##In this case I will create a nice 10x10 matrix for you.

##Also note that there is no set function in here.  I found the function
##was a it redundant and just performed the set instructions
##when makeCacheMatrix is used to create an object.

Here's how to use the makeCacheMatrix:

1. mat <- makeCacheMatrix(rnorm(1:25)
2. mat$getmat()        #returns the value of the matrix

Now you can either set the inverse using the setinvm function, or run cacheSolve.  To set
using the function:
3. mat$setinvm(mat$getmat())

Or, use the cacheSolve:
4. cacheSolve(mat)

You can test that my code is working by running:
1.
4.
4, this time you will see the value returned from cache.

You can then run:
mat$getivm() and see that cacheSolve indeed stores the inverse matrix in mat!
