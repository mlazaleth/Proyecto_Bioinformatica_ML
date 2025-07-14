# Entrar a la carpeta con los archivos fasta
cd Fasta2 || exit

# Alinear todas las secuencias con MUSCLE
for x in *.fasta; do
    ../Scripts/muscle3.8.31_i86linux64 -in "$x" -out "muscle_$x"
done

# Cargar módulo IQ-TREE (si aplica)
module load iqtree/2.2.2.6

# Ejecutar IQ-TREE en los archivos alineados
for aln in muscle_*.fasta; do
    iqtree2 -s "$aln" -nt AUTO
done

# Volver al directorio base
cd ..

# Crear carpetas si no existen
mkdir -p Muscle Iqtree

# Mover los archivos alineados y resultados de IQ-TREE
mv Fasta2/muscle_*.fasta Muscle/
mv Fasta2/*.treefile Fasta2/*.log Fasta2/*.iqtree Fasta2/*.ckp.gz Fasta2/*.bionj Fasta2/*.contree Fasta2/*.mldist Fasta2/*.model.gz Fasta2/*.splits.nex Iqtree/ 2>/dev/null

