"""
Purpose: computing/measuring similarities of different proteins via R package "protr"

Author: Hui-Heng Lin, PhD. On 2nd September 2020

"""

install.packages("protr")
library(protr)

# (1) download and read your protein sequences (in FASTA format)
readFASTA(xxx)

# (2) vectorize/ descriptorize your desired protein sequences. Here only choose xxxx descriptor as an example.
extractAAC( ...)

# (3) loop ? a set of proteins....

# (4) choose distance calculation methods to measure the distances between protein feature vectors....



# Refer to further details of "protr" package in CRAN https://cran.r-rpoject.org/web/packages/protr/   and Xiao, N. et al. (2015) Predicting proten-protein interactions based only on seqeuences information. Proceedings of the National Academy of Sciences, 104, 4337-4341.
