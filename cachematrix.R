## Este Script contiene dos funciones, la primera calcula la inversas de una matiz y la guarda en la memoria cache   
##   la segunda obtiene la inversa de la memoria cache y si no se encunetra la calcula...

## Esta funcion crea un a lista de cuatro funciones 1) Establecer el valor de la matriz 2) Obtiene el valor de la matrz
##   3) Establecer la inversa de la matriz  4) Obtiene  la inversa de la matriz 

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
  
}


## Esta funcion trae de vuelta la inversas de la matriz x de la memorio cache  y si no es el a mima matriz calcula su inversa...

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
  
  ## Return a matrix that is the inverse of 'x'
}

