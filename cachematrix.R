## Programming Assignment 2
## Mike Epler
##
## Matrix inversion is usually a costly computation and there may be some benefit to 
## caching the inverse of a matrix rather than computing it repeatedly. This file contains 
## a pair of functions that cache the inverse of a matrix.
##
## The functions are:
## makeCacheMatrix : This function creates a special "matrix" object that can cache its inverse.
## cacheSolve : This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then  cacheSolve  should 
## retrieve the inverse from the cache.
##
## This code takes advantage of the scoping rules of the R language and how they can be 
## manipulated to preserve state inside of an R object.  
## Assume that the matrix supplied is always invertible
##
##
##
## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {

}
##
##
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed),
## cachesolve retrieves the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
