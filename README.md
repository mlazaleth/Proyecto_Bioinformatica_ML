
## PROYECTO BIOINFORMÁTICA
# Filogenia de Drosophilas del Neotrópico basada en el gen citocromo B

Este proyecto tiene como objetivo reconstruir relaciones filogenéticas entre especies del género *Drosophila* presentes en el Neotrópico, utilizando secuencias del gen mitocondrial **citocromo B (cytB)**.

## Autor
María Lazaleth Encalada Hinojosa 
Biología, Pontificia Universidad Católica del Ecuador


## Autor
María Lazaleth Encalada Hinojosa
Biología, Pontificia Universidad Católica del Ecuador

## Antecedentes
El género Drosophila es un modelo clave en biología evolutiva y genética, con una amplia diversidad en regiones tropicales como el Neotrópico, que aún se encuentra submuestreada y con muchas especies por describir.

El uso de *genes mitocondriales como el citocromo B* ha demostrado ser eficaz para inferir relaciones filogenéticas en distintos niveles taxonómicos, debido a su alta tasa de mutación, herencia materna y facilidad de amplificación (Avise et al., 1987; Simon et al., 1994). En particular, el cytB se ha utilizado con éxito en estudios de divergencia específica en insectos (Cameron et al., 2006) y es útil para analizar tanto especies crípticas como patrones biogeográficos.

Estudiar la filogenia de Drosophila en el Neotrópico permite:
- Comprender la historia evolutiva de linajes tropicales.
- Identificar posibles eventos de especiación reciente.
- Apoyar procesos de conservación y clasificación taxonómica.

> "Los estudios filogenéticos en linajes neotropicales revelan patrones únicos de diversificación influenciados por la historia geológica y ecológica de la región" (Márquez et al., 2011).


## Objetivos
- Obtener una alineación múltiple del gen cytB en diferentes especies de Drosophila.
- Reconstruir un árbol filogenético confiable.
- Analizar la diversidad evolutiva de las especies del Neotrópico.

## Programas a usar
- ATOM
- MUSSCLE
- ASTRAL
- IQ-TREE
- FigTree

## Datos y metodología
### 1. Datos
- Se utilizaron secuencias de ADN mitocondrial del gen *cytB* obtenidas de bases de NCBI.
- Las secuencias fueron depuradas y editadas antes del análisis.

### 2. Alineamiento
- El alineamiento de secuencias se realizó utilizando *MUSCLE*.
- Se verificó visualmente la calidad del alineamiento.

### 3. Análisis filogenético
- Se utilizó *IQ-TREE* para construir el árbol filogenético.
- Se seleccionó el mejor modelo evolutivo automáticamente (-m MFP).
- Se aplicaron 1000 bootstraps ultrarápidos (-bb 1000) para evaluar el soporte de las ramas.

### 4. Visualización
- El árbol se visualizó con *FigTree* y se exportó en formato PDF.

 
![alt text](https://www.carolina.com/images/product/medium/172100_b_gen.jpg)

## Referencias Bibliográficas:

- Avise, J. C., Arnold, J., Ball, R. M., Bermingham, E., Lamb, T., Neigel, J. E., ... & Saunders, N. C. (1987). Intraspecific phylogeography: the mitochondrial DNA bridge between population genetics and systematics. *Annual Review of Ecology and Systematics*, *18*, 489–522. https://doi.org/10.1146/annurev.es.18.110187.002421

- Cameron, S. L., Lambkin, C. L., Barker, S. C., & Whiting, M. F. (2006). A mitochondrial genome phylogeny of Diptera: whole genome sequence data accurately resolve relationships over broad timescales. *Systematic Entomology*, *32*(1), 40–59. https://doi.org/10.1111/j.1365-3113.2006.00355.x

- Márquez, E. J., et al. (2011). Uncovering the evolutionary history of Neotropical *Drosophila* species using mitochondrial markers. *Molecular Phylogenetics and Evolution*, *61*(2), 479–489. https://doi.org/10.1016/j.ympev.2011.07.009

- Simon, C., Frati, F., Beckenbach, A., Crespi, B., Liu, H., & Flook, P. (1994). Evolution, weighting, and phylogenetic utility of mitochondrial gene sequences and a compilation of conserved polymerase chain reaction primers. *Annals of the Entomological Society of America*, *87*(6), 651–701. https://doi.org/10.1093/aesa/87.6.651
