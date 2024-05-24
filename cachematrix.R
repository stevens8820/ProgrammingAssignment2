## Put comments here that give an overall description of what your
## functions do

## x is equal to the matrix, when running the makeCacheMatrix function it will find and then put the inverse of the matrix into the list

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL 
  }
  get <- function()x 
  setinverse <- function(inverse) i <<- inverse 
  getinverse <- function() i 
  
  
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

## cacheSolve will pull the information from the previous function in order to set the inverse into variable m

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getinverse()
  m <- inverse(data , ...)
  x$setinverse(m)
  m
}
