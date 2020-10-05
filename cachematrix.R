##...........................homework

## aca configuro a x asignandole el valor de una matriz
## para posteriormente establezca un valor asignado como "inver" que es igual a nulo,
## Esta función crea un objeto de "matriz", para luego almacenarlo en su cache inverso


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



## la siguiente función hace el calculo de la inversa de la "matriz" especial 
## y la almacena en cache su inverso
## cuando la se ha calculado  la inversa pero su matriz no cambia, entonces esta funcion
## recupera la inversa  del la cahe

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