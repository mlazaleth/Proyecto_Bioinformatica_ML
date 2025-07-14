# Crear directorio de salida
mkdir Fasta2

# Descarga los genes de la dataset mitocondiales del NCBI
mitogen=("coi")
organisms=("Macropodidae")
for mito in "${mitogen[@]}"
do
for org in "${organisms[@]}"
do
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/esearch -db nuccore -query "$mito[Gene] AND $org[Organism]" | \
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/efetch -format fasta > "Fasta/${mito}_${org}.fasta"
done
done

# Unificar secunecias en un solo archivo
for x in *_*.fasta; do
    gen="${file%%_*}"
    cat "${gen}_"*.fasta > "${gen}.fasta"
done

#para quitar los genomas completos 
sed '/^>/ {/genome/d}' Fasta/COI_Macropodidae_raw.fasta > COI_Macropodidae_filtered.fasta

#para filtrar una por especie del archivo filtrado arriba sin genomas completos 
awk '
    /^>/ {
        split($0, parts, "_");  # divide por "_"
        species = parts[1]"_"parts[2];  # especie = nombre_genérico + epíteto
        if (!(species in seen)) {
            print $0;
            seen[species]=1;
            printing=1;
        } else {
            printing=0;
        }
        next;
    }
    printing { print }
' COI_Macropodidae_filtered.fasta > COI_Macropodidae_filtered_atom2.fasta
