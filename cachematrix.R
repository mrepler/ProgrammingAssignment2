## File: cachematrix.R
## Programming Assignment 2
## Mike Epler
##
## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than computing it repeatedly. This file contains 
## a pair of functions that cache the inverse of a matrix.
##
## The functions are:
##    makeCacheMatrix : 
##      This function creates a special "matrix" object that can cache its inverse.
##
##    cacheSolve : 
##      This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##      If the inverse has already been calculated (and the matrix has not changed), then  cacheSolve  should 
##      retrieve the inverse from the cache.
##
## This code takes advantage of the scoping rules of the R language and how they can be 
## manipulated to preserve state inside of an R object.  
## Assumes that the matrix supplied is always invertible.
##
## "C:/Users/MikeEpler/Documents/GitHub/ProgrammingAssignment2/cachematrix.R"
##
## This function creates a special "matrix" object that can cache its inverse
##    Returns the content of a matrix 
##    Sets the content of the matrix 
##    Returns the stored inversion of the matrix 
##    Sets the content of the inverted matrix
##
makeCacheMatrix <- function(x = matrix()) {
                      m <- NULL
                      
                      ## Establish the matrix values for $set, $get, $setmatrix, $getmatrix
                      set <- function(y) {
                              x <<- y
                              m <<- NULL
                              }

                      get <- function() x

                      setmatrix <- function(matrix) m <<- matrix

                      getmatrix <- function() m
                      
                      ## Coerce objects and return
                      list(set = set, get = get,
                              setmatrix = setmatrix,
                              getmatrix = getmatrix)
                }
##
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## cachesolve retrieves the inverse from the cache
##
cacheSolve <- function(x, ...) {
                      m <- x$getmatrix()
                      if(!is.null(m)) {            ## if there is a cache
                              message("getting cached data")
                              return(m)            ## Don't do anything just return 
                      }
      data <- x$get()                              ## If there is no cache get data
      m <- solve(data, ...)                        ## Invert the Matrix using generic function solve{base}
      x$setmatrix(m)                               ## Save the inverted matrix back to the x cache
      m                                            ## return results
}