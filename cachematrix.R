## Put comments here that give an overall description of what your
## functions do

## Matrix Object that caches it's Inverse

makeCacheMatrix <- function(x = matrix()) {
 inver <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inver <<- solve
  getinv <- function() inver
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Returns the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of 'x'
		inver <- x$getinv()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$setinv(inver)
  inver
		
}
