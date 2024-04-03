Rprof()
#Put Code Here

# Non-vectorized approach with multiple for loops
# slow_matrix_multiply <- function(A, B) {
#   n <- nrow(A)
#   p <- ncol(A)
#   m <- ncol(B)
#   result <- matrix(0, n, m)
#   for (i in 1:n) {
#     for (j in 1:m) {
#       for (k in 1:p) {
#         result[i, j] <- result[i, j] + A[i, k] * B[k, j]
#       }
#     }
#   }
#   return(sum(result))
# }
# 
# # Generate two large matrices
set.seed(123)
A <- matrix(rnorm(1e4), 1000, 1000)
B <- matrix(rnorm(1e4), 1000, 1000)

# # Profile and time the non-vectorized approach
# system.time(slow_matrix_multiply(A, B))

# Vectorized approach for matrix multiplication
fast_matrix_multiply <- function(A, B) {
  return(sum(A %*% B))
}

# Profile and time the vectorized approach
system.time(fast_matrix_multiply(A, B))


Rprof(NULL)
summaryRprof()
