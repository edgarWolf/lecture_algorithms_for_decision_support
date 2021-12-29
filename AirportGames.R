library(CoopGame)

airportGameValue<-function(S, k) {
  paramCheckResult = getEmptyParamCheckResult()
  stopOnInvalidCoalitionS(paramCheckResult, S)
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


airportGame<-function(n, k) {
  
  c = airportGameVector(n=n, k=k)
  retAirportGame = list(n=n, k=k, c=c)
  return (retAirportGame)
  
}