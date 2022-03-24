# plot_scale LST 

This project contains variable definitions, equations and  from the paper titled: Challenges and uncertainty in estimating emissivity and surface temperature using flux tower measurements.

At the plot-scale, the flux tower recorded up-welling and, down-welling longwave radiation components are inverted (we named it long equation) to retrieve land surface temperature (LST). Since the down-welling longwave component was not measured routinely until recently, usually only the up-welling longwave component is used (we named it short equation) for the plot-scale LST retrieval and emissivity estimation. Plot-scale emissivity was estimated using a fitting procedure based on observed sensible heat flux and estimated surface-to-air temperature difference. Even with the availability of down-welling longwave radiation it is a common practice to use short equation for LST and emissivity estimation. In this project we have used 10 eddy-covariance data to answer three relevant questions:

1. How much bias is introduced in plot-scale LST and emissivity when short equation is used instead of long equation?
2.Does plot-scale emissivity estimation have an advantage over landscape-scale (MODIS) emissivity?
3.How much uncertainty is introduced in plot-scale LST and ε due to uncertainty in measured EC fluxes?




## Contents

- [/Notebook/HDT_mx+c.ipynb](/Notebook/HDT_mx+c.ipynb):notebook for all sites using an intercept in H(DT) 

- [/Notebook/HDT_mx.ipynb]: All study sites analysis using reboust linear regression model

- [/Notebook/HDT_mx.ipynb]:All study sites analysis forcing linear regression through zero

- [Notebook/mx_leq_mainpaper.ipynb]: LST sensitivity to emissivity 

  
- [Notebook/threebox_AS.ipynb]: uncertainty in emissivity

- [/Notebook/alice_spr_TS-Ta_unc.ipynb]: uncertainty in diurnal LST

- [Data/tern]:  Data of north aurstalian sites

- [Data/fluxnet]:  Data from fluxnet sites

- [Data/]:  MODIS terra MODA011 for LST and emissivity

- [latex]: paper plots and texfile
 - [output]: contains random samples using sobol

