## These functions create a matrix and then calculate the inverse of the matrix

## This function creates a matrix and stores the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL             # set m equal to NULL
  set <- function(y) {  # Create a function y 
    x <<- y             # where you set x equal to y, <<- assignment right to left
    m <<- NULL          #
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix) 

}


## This function checks to see if the inverse of the matrix has previously been calculated.
## If the inverse hasn't previously been calculated, this function calculates it.  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}
