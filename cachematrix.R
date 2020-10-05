##...........................homework

## here I configure x assigning the value of an array
## to later establish a value assigned as "inver" that is equal to null,
## This function creates an "array" object, then stores it in its reverse cache

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inver <<- inverse
        getinverse <- function() inver
        list(set = set, get = get, setinverse = setinverse,
             getinverse = getinverse)
}



## the following function does the calculation of the inverse of the "matrix" special
## and caches its inverse
## when the inverse has been calculated but its matrix does not change, then this function
## retrieve the inverse of the cache

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        
        inver <- x$getinverse()
        if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
        mt <- x$get()
        inver <- solve(mt, ...)
        x$setinverse(inver)
        inver
}
