library(markovchain)
Pa <- matrix(c(0,1,0,0,
              1/4,0,3/4,0,
              0,1/4,0,3/4,
              0,0,1,0),nrow = 4, byrow = TRUE)
Pa
pmat <- new("markovchain",transitionMatrix = Pa,states = c("0","1","2","3"),name = "pq")
pmat
intial = c(1/4,1/4,1/4,1/4)
intial
 #second_step:
p2 = pmat*pmat
p2
# third_step:
p3 = p2*pmat
p3
#pi3 for prob
intial3 = intial*p3
intial3 
