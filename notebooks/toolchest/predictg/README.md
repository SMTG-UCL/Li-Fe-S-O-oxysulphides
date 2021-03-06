

# predict-gibbs-energies


Note: the code in this folder is modified based on https://github.com/CJBartel/predict-gibbs-energies

Repository associated with https://www.nature.com/articles/s41467-018-06682-4 used to predict the temperature-dependent Gibbs energies of inorganic crystalline solids.


This repository is mostly static to coincide with the cited paper. For updates since this paper, please see github.com/CJBartel/compmatscipy which contains a similar (and more up-to-date module).


## Data files

  ### TableS1.csv 
    
    440 compounds used for training and testing the SISSO-learned descriptor
    
  ### masses.json

    dictionary of atomic masses (amu) {element : mass}

  ### Gels.json
  
    dictionary of experimental Gibbs energies (chemical potentials) for the elements {temperature (K) : {element : G (eV/atom)}}

## Implementing descriptor

  ### PredictG.py
    
  contains class for implementing SISSO-learned descriptor; see comments within and arXiv link for details    
    
  ### POSCAR.mp-1143_Al2O3
  
  structure file for Al2O3 from Materials Project to demonstrate use of descriptor
