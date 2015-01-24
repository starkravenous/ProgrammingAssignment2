## Two functions used for inverting matrices

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
