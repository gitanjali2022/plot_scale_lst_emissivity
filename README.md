# Downwelling longwave radiation and sensible heat flux observations are critical for surface temperature and emissivity estimation from flux tower data.

This project contains variable  definitions and equations from the paper titled: Accounting for downwelling longwave radiation reduces the contribution of emissivity to uncertainty in surface temperature estimates from flux tower data
 
Land surface temperature (LST) is a preeminent state variable that controls the energy and water exchange between the Earth’s surface and the atmosphere. At the landscape-scale, LST is derived from thermal infrared radiance measured using space-borne radiometers. At the plot-scale, the flux tower recorded longwave radiation components are inverted to retrieve LST. Since the down-welling longwave component was not measured routinely until recently, usually only the up-welling longwave component is used for the plot-scale LST retrieval. However, we found that ignoring reflected down-welling longwave radiation for plot-scale LST estimations can lead to substantial error. This also has important implications for estimating the correct surface emissivity using flux tower measurements, which is needed for plot-scale LST retrievals.

To better understand and improve approaches of plot-scale LST estimation, the present study addresses the following research questions:
1.Can we obtain an adequate estimate of plot-scale LST while neglecting the reflected down-welling longwave radiation?
2.Does the estimation of plot-scale emissivity based on observed sensible heat flux have an advantage over satellite-derived emissivity for plot-scale LST estimation?   
3.How much uncertainty is introduced in plot-scale LST and emissivity due to uncertainty in measured EC fluxes?    
    


## Contents

- [/Notebook/HDT_mx+c.ipynb](/Notebook/HDT_mx+c.ipynb):notebook for all sites using an intercept in H(DT) 

- [/Notebook/HDT_mx.ipynb](/Notebook/HDT_mx.ipynb): All study sites analysis using robust linear regression model

- [/Notebook/HDT_mx.ipynb](/Notebook/HDT_mx.ipynb):All study sites analysis forcing linear regression through zero

- [/Notebook/mx_leq_mainpaper.ipynb](/Notebook/mx_leq_mainpaper.ipynb): LST sensitivity to emissivity 

  
- [/Notebook/threebox_AS.ipynb](/Notebook/threebox_AS.ipynb): uncertainty in emissivity and LST

- [/Notebook/alice_spr_TS-Ta_unc.ipynb](/Notebook/alice_spr_TS-Ta_unc.ipynb): uncertainty in diurnal LST

- [/Data/tern](/Data/tern): Eddy covariance data for north Australian sites

- [Data/fluxnet](Data/fluxnet):  Data from fluxnet sites

- [Data/Modis_LST](Data/Modis_LST):  MODIS terra ((MOD11A1) extracted data having LST, emissivity and satellite time of pass information

- [/latex](/latex): paper plots and .tex files
 - [/output](/output): contains random samples generated for surface-air temperature difference and emissivity.

