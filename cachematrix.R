## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set<- function(y) {
		x <<- y
		inv <<- NULL
}
In this function I set the inverse as NULL because it needs to be  a placeholder for a future value and I setted the function of the matrix X to a new matrix called Y, getting the inverse for this new matrix. 

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv<- x$getInverse()
      if(!is.null(inv)) {
      	message ("Getting the data cached")
      	return(inv)
	}
	data<- x$get()
	inv <- solve(data)
	x$setInverse(inv)
	inv
}
What I tried to do with this function was use the matrix returned by the last function and only if that matrix has not changed and the inverse has already been calculated then cacheSolve function should give back the inverse of the cache itself. 