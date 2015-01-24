## Two functions used for inverting matrices

#  Note that all of the logic is contained in the first function. Originally
#  I implemented these similar to the example but I felt this way was simpler:
#  I could eliminate the set/get functions for the inverse and cacheSolve
#  itself is no longer really needed (except it was required for the 
#  assignment.)

## Create and return a matrix capable of caching its inverse

makeCacheMatrix <- function(x = matrix()) {

        # cached inverse
        inverse <- NULL

        set <- function(y) {
                # set the value of the matrix
                x <<- y
                inverse <<- NULL
        }

        get <- function() {
                # get the value of the matrix
                x
        }

        cacheSolve <- function() {
                # Return the inverse if it has already been computed
                # else solve the inverse, cache the value, return it
                if (is.null(inverse)) {
                        # no inverse, calc it, store it
                        inverse <<- solve(x)
                }
                inverse
        }

        list(set = set, get = get, cacheSolve = cacheSolve)
}


## Invert the matrix x, magically storing the value for later use

cacheSolve <- function(x, ...) {
        # see cacheSolve above for logic
        x$cacheSolve()
}
