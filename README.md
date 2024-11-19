# Immunological Changes at the Maternal-Fetal Interface Following SARS-CoV-2 Infection

This repository is an attempt to replicate the paper titled **"Single-cell RNA sequencing reveals immunological rewiring at the maternal-fetal interface following asymptomatic/mild SARS-CoV-2 infection"** by Sureshchandra et al., 2022.

Previous work shows that severe COVID infection can cause significant immune activation at the maternal-fetal infectionl; however, changes in immunological activation in mild/asymptomatic COVID cases had not been explored before. This study investigates the impact of asymptomatic or mild SARS-CoV-2 infection on the immune landscape at the maternal-fetal interface. Utilizing single-cell RNA sequencing (scRNA-seq), the researchers analyzed decidual immune cell populations from both blood and term decidua of pregnant women to understand the effects of COVID-19 exposure on maternal and fetal health. The study identifies substantial alterations in immune cell distribution and functionality, including changes in key cell types such as T cells, NK cells, and macrophages. Through comprehensive data integration and quality control, the analysis highlights a significant immunological rewiring characterized by shifts in cellular activation states and altered cell-cell communication networks.

We aimed to replicate the analysis only using cells of the decidua and additionally, as an experiment, performed pseudotime analysis using Seurat and Monocle3 to track immune cell responses, shedding light on the potential long-term implications of maternal SARS-CoV-2 infection on pregnancy outcomes. These findings contribute to our understanding of how maternal infections can influence the immune environment at the maternal-fetal interface and impact fetal development.

This repository contains some of the scripts that were used in the analysis. However, it must be kept in mind that the scripts cannot run as-is; some CLI work has to be done in between a few steps.
 
