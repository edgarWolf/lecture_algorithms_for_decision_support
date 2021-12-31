library(CoopGame)

#' @name airportGameValue
#' @title Compute cost value of a coalition for an airport game.
#' @description \strong{Coalition cost value for an airport game:} \cr
#' For further information see \link{airportGame}
#' @aliases airportGameValue
#' @export airportGameValue
#' @template authhor/EW
#' @template param/S
#' @template param/k
#' @return Cost value for a coalition \code{S}.
#' @examples
#' library(CoopGames)
#' airportGameValue(S=c(1, 2, 3), k=c(10, 20, 30))
#' 
airportGameValue<-function(S, k) {
  paramCheckResult = getEmptyParamCheckResult()
  stopOnInvalidCoalitionS(paramCheckResult, S)
  stopOnInvalidNumberOfPlayers(paramCheckResult, n=length(k))
  logicAirportGameValue(S, k)
}


logicAirportGameValue=function(S, k) {
  result = 0
  i<-1
  end<-max(S)
  
  while(i<=end) {
    result = result + k[i]
    i<-i+1
  }
  return (result)
}



#' @name airportGameVector
#' @title Compute game vector for an aiport game.
#' @description \strong{Game vector for an aiport game:} \cr
#' For further information see \link{airportGame} 
#' @aliases airportGameVector
#' @export airportGameVector
#' @template author/EW
#' @template param/n
#' @template param/k
#' @return  Game vector where each element represents the cost for each coalition possible (except empty coalition).
#' @examples 
#' library(CoopGame)
#' airportGameVector(n=3,k=c(10, 20, 30))
#' 
airportGameVector<-function(n, k) {
  
  bitMatrix = createBitMatrix(n)[,1:n];
  
  A<-c()
  i<-1
  end<-((2^n)-1)
  
  while(i<=end) {
    currCoal<-which(bitMatrix[i,]&1)
    A[i] = airportGameValue(S=currCoal, k=k)
    i<-i+1
  }
  return (A)
}

#' @title Construct an airport game
#' @description \strong{Create a list containing 
#' all information about a specified airport game:} \cr
#' Each value of the cost vector \code{c} specifies the total cost of the 
#' respective coalition. \cr
#' @template author/EW
#' @name airportGame
#' @template param/n
#' @template param/k
#' @return A list with three elements 
#' representing the airport game (n, k, Cost vector c)
#' @export
#' @section Related Functions: 
#' \link{airportGameValue}, \link{airportGameVector}
#' @examples
#' library(CoopGame) 
#' airportGame(n=3, k=c(10, 20, 30))
#' 
#' \donttest{
#' library(CoopGame) 
#' airportGame(n=3, k=c(10, 20, 30))
#' #Output:
#' #$n
#' #[1] 3
#' 
#' $k 10 20 30
#' 
#' #$c
#' #[1] 10 30 60 30 60 60 60
#' }
#'
airportGame<-function(n, k) {
  c = airportGameVector(n=n, k=k)
  retAirportGame = list(n=n, k=k, c=c)
  return (retAirportGame)
}