median.test <- function(x, y){
    z <- c(x, y)
    g <- rep(1:2, c(length(x), length(y)))
    m <- median(z)
    fisher.test(z < m, g)
}
