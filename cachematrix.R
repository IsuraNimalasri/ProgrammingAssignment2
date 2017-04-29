## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # ragument is matrix
  inve <- NULL #make inve variable in cache
  # store a matrix
  set <- function(y) { #
    x <<- y 
    # since the matrix is assigned  y, flush the cache
    inve <<- NULL
  }
  # returns the stored matrix
  get <- function() {x}
  
  # cache the given argument 
  setinverse <- function(inverse){ inve <<- inverse}
  
  # get the cached value
  getinverse <- function() {inve}
  
  # return a list. Each named element of the list is a function
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  # get the cached value
  inv <- x$getinverse()
  
  # if a cached value exists return it
     if(!is.null(inv)) {
           message("getting cached data is ready")
          return(inv)
     }
  
  # otherwise get the matrix, caclulate the inverse and store it in
  # the cache
     data <- x$get()
      inv <- solve(data, ...)
      x$setinverse(inv)
      inv
  
        ## Return a matrix that is the inverse of 'x'
}
