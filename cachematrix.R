## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## Initialize the inverse property
	i<- NULL

	## Method to set the matrix
	set<- function(y){
		x <<-y
		i <<- NULL
	}
	## Method to get the matrix
	get <- function() {
		x
	}
	## Method to set the inverse of the matrix
	setInverse <- function(inverse){
		i <<- inverse
	}

	## Method to get the inverse of the matrix
	getInverse <- function(){
		i
	}

	## Return a list of methods

	list(set= set, get= get,
		setInverse = setInverse,
		getInverse = getInverse)
	
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()

        ## Return the inverse that is already set

        if(!is.null(i)){
        	message("Getting cached data")
        	return(i)
        }

        ## Get the matrix 
        data <- x$get()
        ## Compute the inverse of the matrix
        i <- solve(data)
        ## Set the inverse
        x$setInverse(i)
        ## Return the inverted matrix
        i
}
