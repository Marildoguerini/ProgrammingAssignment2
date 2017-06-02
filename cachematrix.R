##   makeMatrix will create a list containing a function
##   to do the following:
##      1. set construct of the matrix
##      2. get the construct of the matrix
##      3. set the inverse value of the matrix
##      4. get the value of the matrix inverse

## Two functions that store the inverse of a matrix.
## This function creates a special "array" object in which it is possible to store its inverse cached.

makeCacheMatrix <- function(g = matrix()) {
  	inv <- NULL
  	set <- function(j){
   	g <<- j
    	inv <<- NULL
  	}
  	
	get <- function() g
  	setInverse <- function(solveMatrix) inv <<- solveMatrix
  	getInverse <- function() inv
  	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##  cacheSolve calculates the inverse of the matrix above
##  first checks to see if the inverse has already been calculated
##  otherwise calculate inverse of the matrix
##  via the setmean function


## This function calculates the inverse of the special "matrix" returned by the calculated makeCacheMatrix
	cacheSolve <- function(g, ...) {
  	## Return a matrix that is the inverse of 'g'
  	inv <- g$getInverse()
  	if(!is.null(inv)){
   		message("getting cached data")
    		return(inv)
  	}
	data <- x$get()
	inv <- solve(data)
  	g$setInverse(inv)
 	inv      
}
