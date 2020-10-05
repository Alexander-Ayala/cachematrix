##...........................homework

<<<<<<< HEAD
## here I configure x assigning the value of an array
## to later establish a value assigned as "inver" that is equal to null,
## This function creates an "array" object, then stores it in its reverse cache
=======
## aca configuro a x asignandole el valor de una matriz
## para posteriormente establezca un valor asignado como "inver" que es igual a nulo,
## Esta función crea un objeto de "matriz", para luego almacenarlo en su cache inverso

>>>>>>> afbfa5ba084a5065a2424d04f8a2f35e17c0821a

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



<<<<<<< HEAD
## the following function does the calculation of the inverse of the "matrix" special
## and caches its inverse
## when the inverse has been calculated but its matrix does not change, then this function
## retrieve the inverse of the cache
=======
## la siguiente función hace el calculo de la inversa de la "matriz" especial 
## y la almacena en cache su inverso
## cuando la se ha calculado  la inversa pero su matriz no cambia, entonces esta funcion
## recupera la inversa  del la cahe
>>>>>>> afbfa5ba084a5065a2424d04f8a2f35e17c0821a

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
probando4