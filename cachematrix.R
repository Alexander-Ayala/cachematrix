 ##example
makeVector <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

#...........................homework
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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



## Write a short comment describing this function

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
##prueba.....3