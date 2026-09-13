# R K-means Cluster Analysis — Mariana Trench Bathymetric Profiles

R scripts performing k-means (and model-based) cluster analysis of the bathymetric profiles of the Mariana Trench, testing several numbers of clusters and visualising the partitions, together with Gaussian finite-mixture model selection.

## Related publication

These scripts produced figures in:

Lemenkova, P. K-means Clustering in R Libraries {cluster} and {factoextra} for Grouping Oceanographic Data. International Journal of Informatics and Applied Mathematics 2019, 2(1), 1-26.

- DOI: https://doi.org/10.5281/zenodo.3457771
- figshare: https://doi.org/10.6084/m9.figshare.9891203
- HAL: https://hal.science/hal-02294056
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3458280
- ISSN: 2667-6990

## Scripts

- k-means-Clusters-Mariana.R: reads Morphology.csv and runs k-means (stats::kmeans) for several cluster counts (k = 3, 4, 5, 7), visualising each partition with factoextra::fviz_cluster.

- k-means-Pairwise.R: pairwise scatter view of the k-means cluster assignments across variables.

- k-means-centroid-and-methods.R: centroid computation and model-based clustering with mclust (Gaussian finite mixtures) - BIC model selection, classification, density and uncertainty plots.

## Methods

- K-means partitioning (Lloyd algorithm) with cluster-count comparison and cluster visualisation (factoextra); Gaussian-mixture model-based clustering with BIC selection (mclust).

## Data

- Morphology.csv: per-profile morphometric factors of the Mariana Trench.

## Requirements

- R (>= 3.5); packages: cluster, factoextra, mclust, ggplot2

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089

Cite: Lemenkova, P. K-means Clustering in R Libraries {cluster} and {factoextra} for Grouping Oceanographic Data. International Journal of Informatics and Applied Mathematics 2019, 2(1), 1-26. https://doi.org/10.5281/zenodo.3457771

## License

MIT — see LICENSE (Copyright Polina Lemenkova).
