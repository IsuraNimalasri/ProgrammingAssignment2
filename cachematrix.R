## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inve <<- inverse
  getinverse <- function() inve
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
     if(!is.null(inv)) {
           message("getting cached data is ready")
          return(inv)
      }
     data <- x$get()
      inv <- solve(data, ...)
      x$setinverse(inv)
      inv
  
        ## Return a matrix that is the inverse of 'x'
}
