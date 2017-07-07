## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
In this function I set the inverse as NULL because it needs to be  a placeholder for a future value and I set the function of the matrix X to a new matrix c
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set<- function(y) {
		x <<- y
		inv <<- NULL
		}
	 get <- function() x
	 setInverse <- function(solve)
		 inv <<- solve
	 getInverse <- function() inv
		   
	list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
## Write a short comment describing this function

What I tried to do with this function was use the matrix returned by the last function and only if that matrix has not changed and the inverse has already been calculated then cacheSolve function should give back the inverse of the cache itself. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if(!is.null(inv)) {
      	message ("Getting the data cached")
      	return(inv)
	}
	data<- x$get()
	inv <- solve(data)
	x$setInverse(inv)
	inv
}
