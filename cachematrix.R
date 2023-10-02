## These functions cache the inverse of a matrix.

## This function creates an object that will cache 
##the matrix' inverse.

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set<-function(matrix) {
        m<<- matrix
        i<<- NULL
  }
  
  setInverse<- function(inverse) {
        m
  }
  
  getInverse <- function() {
        i
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function will obtain the inverse of the matris
## from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getInverse()
  
  if( !is.null(m)) {
          message("getting cached data")
          return(m)
  }
    data<- x$get()
   m<- solve(data) %*% data
   x$setInverse(m)
    m
  
  }
