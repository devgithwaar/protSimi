"""
Purpose: computing/measuring similarities of different proteins via R package "protr"

Author: Hui-Heng Lin, PhD. On 2nd September 2020. Updated on 20th Sept. 2020

"""

install.packages("protr") # pack installation
library(protr)



# (1) download and read your protein sequences (in FASTA format)
fs <- readFASTA("Fasta_file_path")

# example: 
 
seq <- readFASTA(system.file("protseq/Plasminogen.fasta", package = "protr"))  

length(seq) # 50 protein/amino acid sequences were stored in the "seq"



# (2) vectorize/ descriptorize your desired protein sequences. Here only choose the amino acids composition descriptor function "extractAAC( )" as an example. Note that there are in fact multiple other kinds of protein descritpor functions are available.
extractAAC( ...)  # Note that this function recognizes frequently seen 20 amino acids only. If the sequence to be analyzed contains extract amino acids other than the recognized 20 ones, error would happen.

# example: vectorize the 50 amino acid sequences in the loop

mat<-matrix(NA, 50, 20) # create a matrix variable for storing vectors generated inside the loop. 50 is the number of sequence in the "seq" variable, while 20 is the dimension of vector generated through function "extractAAC()"

for(i in 1:length(seq)){ mat[i] <- extractAAC(seq[[i]]) } # the loop

print(mat) # examine if vector assignment operation was successful.


# (3) compute the distance value between a pair of proteins (so as to reflect the similarity). Note that multiple types of distance computation methods are available to measure the distances between protein feature vectors. E.g., the Euclidean distance, the Manhattan distance, etc.
# Example: here I only take the default method of the function dist( ), i.e., the Euclidean distance as an example for computation.

dm<-dist(mat)

# Note that, rbind( ) function may be used to add your desired protein vectors into the matrix for further computation.


# (4) Visualize the distance matrix data (plotting the heatmap) 
heatmap(as.matrix(dm), Colv=NA, Rowv=NA)



# Refer to further details of "protr" package in CRAN https://cran.r-rpoject.org/web/packages/protr/   and Xiao, N. et al. (2015) Predicting proten-protein interactions based only on seqeuences information. Proceedings of the National Academy of Sciences, 104, 4337-4341.
