## Two simple functions for a matrix-class and for computing the inverse of such a matrix. 

## Creates a class describing a matrix and its inverse. 
## Has the functions set,get, setInverse and getInverse, whose functionalities should be obvious.
makeCacheMatrix <- function(mat = matrix()) {
	inverse <- NULL
	set <- function(y) {
		mat <<- y
		inverse <<- NULL
	}
	get <- function() mat
	setInverse <- function(inv) inverse <<- inv
	getInverse <- function() inverse
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Takes a matrix-class created by makeCacheMatrix and returns its inverse. 
## Uses the existing cached inverse if it exists, otherwise it 
## uses the solve-function to compute it. 
cacheSolve <- function(mat, ...) {
	inv <- mat$getInverse()
	if(!is.null(inv)){
		# message("getting cache")
		return(inv)
	}
	data <- x$get()
	matinv <- solve(data)
	mat$setInverse(matinv)
	matinv
}
