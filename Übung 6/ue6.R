library(igraph)

# Folie 9/10
g <- graph.formula(1-2, 2-3, 2-5, 4-5, 4-7, 7-6)
plot(g)

# Folie 9/11
dg <- graph.formula(1-+2, 2+-3, 1-+3, 3++4)
plot(dg)
dev.off()

# Folie 9/13 (Kevin-Bacon-Game)
gmov <- graph.formula(1-2, 2-3, 3-4)
V(gmov)$name <- c("Monika Gruber", "Christine Paul", "Ludger Pistor", "Kevin Bacon")
E(gmov)$name <- c("Vatertage", "Deutschfieber", "X-Men:First Class")
plot(gmov, edge.label = E(gmov)$name)

