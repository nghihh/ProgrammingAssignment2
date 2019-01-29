## Put comments here that give an overall description of what your
## functions do testing

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function (y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse2 <- function(inverse2) i <<- inverse2
        getinverse2 <- function() i
        list(set = set, get = get, setinverse2 = setinverse2, getinverse2 = getinverse2)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ##print("Hello start")
        
        i <- x$getinverse2()
        
        ##print(i)
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        print(data)
        i <- solve(data)
        x$setinverse2(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
