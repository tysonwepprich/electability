# election decision

valHill <- 50
valBern <- 80
valTrump <- 50
valCruz <- 10
valRubio <- 10
valKasich <- 25
valCarson <- 1
valRep <- c(valTrump, valCruz, valRubio, valKasich, valCarson)
valDem <- c(valHill, valBern)

pwHillvTrump <- .5
pwHillvCruz <- .5
pwHillvRubio <- .5
pwHillvKasich <- .5
pwHillvCarson <- .5
probwinHillvRep <- c(pwHillvTrump, pwHillvCruz, pwHillvRubio, pwHillvKasich, pwHillvCarson)

pwBernvTrump <- .5
pwBernvCruz <- .5
pwBernvRubio <- .5
pwBernvKasich <- .5
pwBernvCarson <- .5
probwinBernvRep <- c(pwBernvTrump, pwBernvCruz, pwBernvRubio, pwBernvKasich, pwBernvCarson)

probwinTrumpvDem <- 1 - c(pwHillvTrump, pwBernvTrump)

utilHill <- sum(valHill * probwinHillvRep / length(probwinHillvRep)) + sum((1 - probwinHillvRep) * valRep * 1/length(probwinHillvRep))
utilBern <- sum(valBern * probwinBernvRep) + sum((1 - probwinBernvRep) * valRep)
utilBern <- sum(valBern * probwinBernvRep, (1 - probwinBernvRep) * valRep) / length(probwinBernvRep)
utilBern <- sum(valBern * probwinBernvRep) + sum((1 - probwinBernvRep) * valRep)

utilTrump <- sum(valTrump * probwinTrumpvDem / length(probwinTrumpvDem)) + sum((1 - probwinTrumpvDem) * valDem/  length(probwinTrumpvDem))




