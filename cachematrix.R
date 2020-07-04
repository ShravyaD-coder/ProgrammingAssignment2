## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Program to find inverse of matrix 

##makeCacheMatrix caches the given matrix
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function
##cacheSolve solves and finds the inverse of the matrix
cacheSolve <- function(x, ...) {
  m<-x$getinv()
  if(!is.null(m)){
    print("Cached Data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setinv(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
