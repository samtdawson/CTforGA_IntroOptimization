#Set Up----
OBJ_Coeff <- c(1.9, 1.5)  # coefficients c

ST_Coeff <- matrix(c(-1,2, # reverse for <=
                     0,-1, # reverse for <=
                     1,0),
                   ncol = 2,
                   byrow = TRUE)
RHS <- c(0,# reverse for <=
         -3000000,# reverse for <=
         6400000)

#Show decision----
library(gMOIP)
plotPolytope(A=ST_Coeff,b=RHS,obj=OBJ_Coeff,
             nonneg = rep(TRUE, ncol(A)),
             type = rep("c", ncol(ST_Coeff)),
             faces = rep("c", ncol(ST_Coeff)),
             crit = "max",labels = "coord",
             plotOptimum = FALSE) + 
             ggplot2::labs(x="GAS",y="OIL")

#Show optimum result----
library(gMOIP)
plotPolytope(A=ST_Coeff,b=RHS,obj=OBJ_Coeff,
             nonneg = rep(TRUE, ncol(A)),
             type = rep("c", ncol(ST_Coeff)),
             faces = rep("c", ncol(ST_Coeff)),
             crit = "max",labels = "coord",
             plotOptimum = TRUE) + 
    ggplot2::labs(x="GAS",y="OIL")




