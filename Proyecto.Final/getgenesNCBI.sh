# Get all genes for a class (mammals in this case)
./datasets download gene symbol CHK1 --ortholog mammals --filename chk1_mammlas.zip

# Unzip the genes previously downloaded
unzip chk1_mammlas.zip

# Copy the genes in the current directory
cp ncbi_dataset/data/rna.fna .

# Align genes
./muscle3.8.31_i86linux64 -in *.fna -out muscle_chk1.fna -maxiters 1 -diags

# Do filogeny with IQTREE
for muscle in muscle_*
do
iqtree2 -s ${muscle}
done
