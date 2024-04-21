```markdown
# QCFF/PI Simulation Setup

To run QCFF/PI, a few sets of control parameters are required. Below are the parameters for one of the studied systems, the 'phenolate' ion in RLuc8.

## Control Parameters (qcff_opt file)

```bash
&MOL
 NSTEEP=100,   # Number of steepest descent iterations
 ISIG=1,       # Computations of sigma charge influence
 IDELRE=1,     # Sigma charges calculated by DEL RE method
 IDIP=0,       # Computations of dipole moment turned off
 IMODE=0,      # Printing out of normal mode vectors turned off
 ITEST=0,      # Testing of numerical and analytical derivatives turned off
 IVIB=1,       # Calculations of vibrational frequencies
 NMIN=20,      # Number of modified Newton-Raphson iterations
 NAO=15,       # Number of occupied orbitals
 NG=8,         # Number of levels in the CI calculations
 IRED=0,       
 ISOLV=1,      # Solvation effects are considered within the PDLD method
 NEX=1,        # First excited state
 FIA='SING',   # Calculations of singlet excitation
 INUMF=0,      
 add_ind=0,    
&END
```

Refer to the QCFF/PI documentation for more details on these parameters.

## QCFF/PI Parameters (qcff_parm1 file)

The QCFF/PI also requires a user configuration interaction list of groups of PI atoms in the molecules. This file is named `user_ci_list`. For the phenolate case, there are 5 groups (see image below):
1. Three benzene PI atoms
2. Peptide PI atoms
3. Phenolate PI atoms

![image](https://github.com/nandiashim/JACS2024/assets/85494700/b757adab-2f3e-475a-906d-1f8a51ac1d6e)

Make sure to configure this list accordingly to properly set up your simulation.

## Additional Requirements

To run the QCFF/PI program, you need two executable script files:
- `xqcffpi_Npi`
- `molaris_hpc9.15_huge`

A folder named 'histogram' contains a script to extract the emission spectra. You can refer to `grep_histogram.com` for the procedure to obtain the spectra.

## How to Obtain QCFF/PI Program

To avail and download the QCFF/PI program, contact ztchu@usc.edu.
