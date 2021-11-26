library(EvolutionaryGames)
# 1)

# a)
(A <- matrix(c(5,0,7,4), 2, byrow=T))
stratgies <- c("a1", "a2")
ESS(A, strategies)
phaseDiagram2S(A, Replicator, strategies = c("a1", "a2"))


# b)
(A <- matrix(c(3,0,0,1), 2, byrow=T))
stratgies <- c("a1", "a2")
ESS(A, strategies)
phaseDiagram2S(A, Replicator, strategies = c("a1", "a2"))

# c)
(A <- matrix(c(3,3,3,3), 2, byrow=T))
stratgies <- c("a1", "a2")
ESS(A, strategies)
phaseDiagram2S(A, Replicator, strategies = c("a1", "a2"))

# d)
(A <- matrix(c(2,2,4,0), 2, byrow=T))
stratgies <- c("a1", "a2")
ESS(A, strategies)
phaseDiagram2S(A, Replicator, strategies = c("a1", "a2"))



# 2.)

(A <- matrix(c(0,0,1,2), 2, byrow=T))
stratgies <- c("a1", "a2")
ESS(A, strategies)
phaseDiagram2S(A, Replicator, strategies = c("a1", "a2"))
