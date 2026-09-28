README: instructions for reproducing the simulations/analysis from modelling of paracetamol

The files provided with this Project of github include:

1. The Monolix project containing the final population model with all covariates incorporated, as well as the corresponding dataset. 
2. The Simulx project is also provided, containing the multiple-dose simulations and the corresponding probability of target attainment (PTA) calculations with therapeutic concentration targets for dogs and humans. 
3. The R project and associated R script used to generate the three-dimensional simulations relating drug concentrations, dosing regimens, and PTA to the selected therapeutic concentration targets.

The analysis can be reproduced as follows.

First, run the final Monolix model. This can be done either by opening and running the provided final Monolix project or by rebuilding the analysis from scratch using the dataset. 

Second, once the final model has been done, import it into a new Simulx Project and follow the simulation settings and procedures specified in the provided Simulx project. But, if you want, the supplied Simulx project can be opened and run directly.

Third, the simulation results will provide the different PTA values obtained for each of the therapeutic concentration targets evaluated in different breeds of dogs and including human simulated data from the manuscript of Mohammed et al., 2012.

Fourth: these results can then be exported to an Excel spreadsheet, csv file or txt.file, and imported into the accompanying R project. The R script can then be used to reproduce the three-dimensional analyses and visualisations of drug concentrations, dosing regimens, and PTA according to the different therapeutic concentration targets.

The entire workflow can either be reproduced from scratch using the supplied dataset and scripts or performed using the Monolix, Simulx, and R projects provided here as templates.

Should you have any questions regarding the analysis or encounter any difficulties reproducing the results, please do not hesitate to contact the authors of this project by email (Ludovic Pelligand (lpelligand@rvc.ac.uk) and Juan Manuel Serrano-Rodríguez (jserranor@uco.es)).

Thank you.