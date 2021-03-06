# FEM
Finite Element Modelling in Fortran for structural problems, solid mechanics, geotechnic and artificially structured soil

![FEM](figures/PostProcessing-FieldDisp2-small.png)

Based on *Based on Finite Elements in Plasticity: Theory and Practice* by Owen & Hinton

## Yield criterion implemented

- Von Mises
- Mohr-Coulomb
- Tresca
- Drucker-Prager
- Cam-Clay modified
- [MAAS (Robin et al., 2015)](https://ore.exeter.ac.uk/repository/bitstream/handle/10871/20697/An%20Efective%20Constitutive%20Model%20for%20Lime%20Treated%20Soils.pdf?sequence=2&isAllowed=y)

## Model MASS

![MAAS](figures/MCC-DP-hybrid-1-01.png)

- [MAAS (Robin et al., 2015)](https://ore.exeter.ac.uk/repository/bitstream/handle/10871/20697/An%20Efective%20Constitutive%20Model%20for%20Lime%20Treated%20Soils.pdf?sequence=2&isAllowed=y)
- [Robin, 2014](https://core.ac.uk/download/pdf/43094182.pdf)

## Code FEMASS: Instructions
This code includes the pre-processing, processing, and post-processing of geotechnical problems.

### Requirements

- gfortran. Works on Mac and Linux. Windows not tested.
- Python
- GiD
- Paraview


## Pre-processing : GID

Import the Problem_Type (folder ProblemType_GiD) into GiD. The procedure is the same as the one to import Code_Bright.

To plot the mesh, give the values of the parameters, etc… follow the procedure given in the pdf ProblemType_GiD > Tutorial_II_Shallow_Foundation.pdf (source from Code_Bright).

When everything is ready, save the project  Proj_FEMASS.gid in the folder `FEMASS > PreProcessing`.

Run the calculations: this will generate an output file Proj_FEMASS.dat that contains all the informations required for the FEM simulations, the format being based on the approach given in Owen and Hinton.

## Processing: Fortran

Open FEMASS > subroutines > input_data_GiD.f90 and change l.28 to change the path to your GiD Project.

From a termina:

```basH
cd /path/to/folder/FEMASS
gfortran –llapack –lblas main.f90
./a.out
```

This will start the calculations.

All the global variables are described in `▸ FEMASS ▸ workspace ▸ Module.f90`

## Post-Processing: Paraview

During processing stage, the results at each increment are saved in the folder:
`FEMASS ▸ PostProcessing ▸ Output ▸ output_increm`

Before a simulation, it can be good to erase all the files already present by running the python scripts `Purge_output.py` and `Purge_vtkmovie.py`.

Run the Python script `output_vtk_python.py`.
This will create as many number of vtk files as increments performed during the simulation in the folder vtk_movie.

Open this folder with Paraview; it will automatically load all the increments, and allow the visualisation of the complete simulation.
Numerous parameters can be visualised: stresses, strains, etc..





