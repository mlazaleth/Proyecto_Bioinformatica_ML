# PROYECTO BIOINFORMÁTICA

## Filogenia de Macropódidos basada en el gen citocromo oxidasa I (COI)

Este proyecto tiene como objetivo reconstruir las relaciones filogenéticas entre especies de la familia *Macropodidae* (canguros, ualabíes y afines), utilizando secuencias del gen mitocondrial citocromo oxidasa subunidad I (COI). El uso de herramientas bioinformáticas modernas permite analizar relaciones evolutivas de forma eficiente, basada en datos moleculares confiables.

---

### 👩‍🔬 Autor

**María Lazaleth Encalada Hinojosa**  
Biología, Pontificia Universidad Católica del Ecuador

---

### 🧬 Antecedentes

La familia *Macropodidae*, perteneciente al orden Diprotodontia, incluye aproximadamente 65 especies vivas de marsupiales herbívoros, distribuidos principalmente en Australia, Nueva Guinea y algunas islas cercanas. Estos animales presentan una diversidad ecológica notable, habitando desde zonas áridas hasta regiones boscosas húmedas. Además de su relevancia ecológica, son un modelo interesante para estudios evolutivos por su radiación adaptativa en el aislamiento geográfico australiano (Springer et al., 1997).

Tradicionalmente, la clasificación de los macropódidos se ha basado en caracteres morfológicos como la dentición, tamaño corporal o tipo de locomoción. Sin embargo, estos criterios han demostrado ser insuficientes para resolver con precisión la filogenia del grupo, especialmente en especies crípticas o con evolución convergente (Baker et al., 2004).

Frente a esto, el uso de marcadores moleculares se ha consolidado como una herramienta robusta en estudios filogenéticos. Entre ellos, el gen mitocondrial **citocromo oxidasa subunidad I (COI)** ha sido ampliamente empleado tanto en códigos de barras genéticos (DNA barcoding) como en análisis filogenéticos a distintos niveles taxonómicos (Hebert et al., 2003). Su herencia materna, falta de recombinación y alta tasa de evolución lo hacen ideal para distinguir entre especies cercanas (Avise et al., 1987; Simon et al., 1994).

El análisis de las relaciones filogenéticas en *Macropodidae* utilizando COI permite:

- Identificar agrupaciones monofiléticas con soporte estadístico.
- Proponer hipótesis sobre eventos de especiación.
- Apoyar decisiones taxonómicas y de conservación en especies amenazadas.
- Explorar la historia biogeográfica de la radiación marsupial australiana.

> “La integración de datos moleculares y morfológicos ha sido esencial para comprender la evolución de los marsupiales en Australasia” (Springer et al., 1997).

---

### 🎯 Objetivos

- Obtener una alineación múltiple del gen COI en distintas especies de *Macropodidae*.
- Reconstruir un árbol filogenético confiable y con soporte estadístico.
- Analizar patrones evolutivos y relaciones entre linajes macropódidos.

---

### 🧪 Programas utilizados

- **MUSCLE** – alineamiento múltiple de secuencias
- **IQ-TREE** – inferencia filogenética con soporte bootstrap y aLRT
- **FigTree** – visualización de árboles filogenéticos
- **ATOM** – edición de secuencias y curación previa

---

### 🔬 Datos y metodología

#### 1. Datos
Se utilizaron secuencias de ADN mitocondrial del gen COI, obtenidas de GenBank (NCBI), representando diversas especies dentro de *Macropodidae*.  
Las secuencias fueron depuradas, recortadas y renombradas para estandarizar el análisis.

#### 2. Alineamiento
El alineamiento múltiple se realizó con **MUSCLE v3.8.31** (Edgar, 2004), verificado visualmente para evitar desplazamientos o regiones ambiguas.

#### 3. Análisis filogenético
La inferencia filogenética se llevó a cabo con **IQ-TREE v2.2.2.6** (Minh et al., 2020), empleando el mejor modelo evolutivo determinado automáticamente (`-m MFP`). Se utilizó soporte estadístico mediante:

bash
iqtree2 -s archivo_alineado.fasta -m MFP -bb 1000 -alrt 1000 -n

### M-* Resultados
Ver imagen en la carpeta de Results 

### M-* Conclusiones 

A partir del análisis filogenético con el gen mitocondrial COI, se obtuvo un árbol con agrupaciones bien definidas dentro de la familia *Macropodidae*. El árbol muestra una clara separación entre los géneros analizados, destacando la **monofilia del género *Petrogale***, con altos valores de soporte en la mayoría de sus nodos internos (bootstrap >85% y aLRT >80 en varios casos).

La especie *Dendrolagus goodfellowi* aparece como un linaje basal respecto al resto del clado principal, mientras que *Phascolarctos cinereus* (el koala) se posiciona como grupo externo, cumpliendo el rol de outgroup para enraizar el árbol. 

Los resultados también revelan **afinidades filogenéticas esperadas**, como la cercanía entre *Thylogale thetis*, *T. stigmatica* y *T. browni*, así como la cohesión de *Macropus rufogriseus* y *Macropus sp.* en un clado separado del resto de los wallabies.

En términos generales, el uso del gen **COI** permitió obtener un árbol con **resolución filogenética confiable**, sustentado por análisis estadísticos robustos (bootstrap ultrarrápido y aLRT), lo cual respalda su utilidad para estudios sistemáticos en *Macropodidae*.


### M-, Bibliografía 
Avise, J. C., Arnold, J., Ball, R. M., Bermingham, E., Lamb, T., Neigel, J. E., ... & Saunders, N. C. (1987).
Intraspecific phylogeography: the mitochondrial DNA bridge between population genetics and systematics.
Annual Review of Ecology and Systematics, 18, 489–522.
https://doi.org/10.1146/annurev.es.18.110187.002421

Baker, A. M., Mutton, T. Y., & Hool, J. J. (2004).
Molecular systematics and biogeography of the Macropodidae: resolving kangaroo relationships using mitochondrial DNA.
Molecular Phylogenetics and Evolution, 31(1), 186–202.
https://doi.org/10.1016/S1055-7903(03)00284-1

Edgar, R. C. (2004).
MUSCLE: multiple sequence alignment with high accuracy and high throughput.
Nucleic Acids Research, 32(5), 1792–1797.
https://doi.org/10.1093/nar/gkh340

Hebert, P. D. N., Ratnasingham, S., & de Waard, J. R. (2003).
Barcoding animal life: cytochrome c oxidase subunit 1 divergences among closely related species.
Proceedings of the Royal Society B: Biological Sciences, 270(Suppl 1), S96–S99.
https://doi.org/10.1098/rsbl.2003.0025

Minh, B. Q., Schmidt, H. A., Chernomor, O., Schrempf, D., Woodhams, M. D., von Haeseler, A., & Lanfear, R. (2020).
IQ-TREE 2: New models and efficient methods for phylogenetic inference in the genomic era.
Molecular Biology and Evolution, 37(5), 1530–1534.
https://doi.org/10.1093/molbev/msaa015

Simon, C., Frati, F., Beckenbach, A., Crespi, B., Liu, H., & Flook, P. (1994).
Evolution, weighting, and phylogenetic utility of mitochondrial gene sequences and a compilation of conserved PCR primers.
Annals of the Entomological Society of America, 87(6), 651–701.
https://doi.org/10.1093/aesa/87.6.651

Springer, M. S., Kirsch, J. A. W., & Case, J. A. (1997).
The chronicle of marsupial evolution.
In: Vertebrate Paleobiology in the Mesozoic. Springer, Boston, MA.
https://doi.org/10.1007/978-1-4899-0788-3_9

