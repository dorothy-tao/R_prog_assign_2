# makeCacheMatrix function
# this function cretes a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()){
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL 
    }
get <- function() x
setinv <- function(inverse)inv <<- inverse
getinv <- function()inv
list(set = set, get = get, setinv = setinv, getinv = getinv)
}
# cacheSolve function
# this function computes the inverser of the special "matrix"
# returned by makeChe Matrix above.
# If the inverse has already been calculated (and the matrix has not changed),
# then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...){
    inv <- x$getInverse()
    if(!is.null(inv)){
        message("get cached output")
        return(inv)
    }
    data <- x$get()
    inv <- slove(data, ...)
    x$setInverse(inv)
    inv
}

