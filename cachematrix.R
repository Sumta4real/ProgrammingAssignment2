## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    u <- NULL
    set <- function(w){
        x <<- w
        u <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) u <<- solve
    getinverse <- function() u
    list(set = set, get= get,setmean = setmean, getmean= getmean)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        u <- x$getmean()
        if(!is.null(u)){
            message("getting chached data")
            return(u)
            
        }
        data <- x$get()
        u <- mean(data,...)
        x$setmean(u)
        u
}
