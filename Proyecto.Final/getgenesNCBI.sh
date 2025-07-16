# Get all genes for an order
./datasets download gene symbol CHK1 --ortholog primates --filename chk1_primates.zip

# Unzip the genes previously downloaded
unzip chk1_primates.zip

# Copy the genes in the current directory
cp ncbi_dataset/data/rna.fna .

# Align genes
./muscle3.8.31_i86linux64 -in *.fna -out primates_chk1.fna -maxiters 1 -diags

