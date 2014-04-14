## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        if (is.matrix(x) != T){
                message("Invalid input!")
        }else{
                cx <<- x
                cinvx <<- solve(x)
        }
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        if (is.matrix(x) != T){
                print("Invalid input!")
        }else if (identical(x,cx) & class(cinvx)== "matrix"){
                message("Cache exists")
                return(cinvx)
        }else{
                message("Cache does not exists")
                return(solve(x))
        }
}
