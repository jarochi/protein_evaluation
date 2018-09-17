median.test <- function(x, y){
    z <- c(x, y)
    g <- rep(1:2, c(length(x), length(y)))
    m <- median(z)
    if(length(unique(z < m)) == 1) {
      list(p.value = 1)
    } else {
      fisher.test(z < m, g)
    }
}
