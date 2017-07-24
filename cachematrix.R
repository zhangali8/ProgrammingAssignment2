## cache inverse of a matrix
## creat a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {  ## x: an invertible matrix
   inv <- NULL
set <- function(y){                          ## set the matrix
   x <<- y
  inv <<- NULL
}
get <- function()x                           ## get the matrix

setinv <- function(inv) inv <<- inverse      ## set the inverse
getinv <- function()inv                      ## get the inverse         

list(set=set,get=get,setinv=setinv,getinv=getinv)
}



## computes the inverse of a matrix, if the inverse has been calculted before,the cached inverse is returned.

cacheSolve <- function(x, ...) { 
inv = x$getinv()              ## return the inverse of original matrix

if (!is.null(inv)){            ## if the inverse has already been calculated before
 message("inverse is cached")
return(inv)
}

m <- x$get()                  ## otherwise, canculate the inverse
inv <- solve(m,...)

x$setinv(inv)                 ## cache the inverse
return(inv)                   ## return the inverse
}

