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

(A <- matrix(c(1,2,0,0), 2, byrow=T))
stratgies <- c("a1", "a2")
ESS(A, strategies)
phaseDiagram2S(A, Replicator, strategies = c("a1", "a2"))



# 5.)
# Refers to: rock-paper-scissor (according to the matrix provided below in this order) 
A <- matrix(c(0, -1, 1, 1, 0, -1, -1, 1, 0), 3, byrow=T)
state <- matrix(c(0.4, 0.3, 0.3), 1, 3, byrow=T)
# state <- matrix(c(1/3, 1/3, 1/3), 1, 3, byrow=T)
phaseDiagram3S(A, Replicator, NULL, state, FALSE, TRUE)
