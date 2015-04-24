## The functions seem to create a matrix in cache and then creates an inverse
## of that matrix

## Write a short comment describing this function:  This function creates a matrix
## with the values for the vector and mean

makeCacheMatrix <- function(x = matrix()) {

}

## This function calculates the mean of the makeCacheMatrix vector.  It checks
## if the mean is already calculated and gets the mean from cache, skipping the 
## computation.  If it is not already calculated, it calculates the mean of the 
## data and sets the value in cache using the setmean function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(x = numeric()) {
     m <- NULL
     set <- function(y) {
       x <<- y
       m <<- NULL
     }
     get<- function() x
     setmean <- function(mean) m <<- mean
     getmean <- function() m
     list(set = set, get = get,
          setmean = setmean, 
          getmean = getmean)
}

cacheSolve <- function(x, ...) {
    m <- x$getmean()
      if(!is.null(m)) {
          message("getting cached data")
          return (m)
      }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}
