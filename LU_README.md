### LU Factorization with Partial Pivoting
`luFactor.m` is a function that takes a square matrix and decomposes it into a lower triangular and an upper trianglar matrix. It also provides a permutation matrix that tracks any potential pivoting that may take place. 
#### How does it work? 
The user inputs a square matrix, and the function returns it decomposed into a lower triangular matrix (L) and upper trianglar matrix (U). The pivoting that may or may not take place, depending on how the factorization is performed, is recorded by changes in the permutation matrix (P). 
##### Syntax 
- input:`lufactor(mat)`
- output: upper triangular matrix (U), lower triangular matrix (L), permutation matrix (P)