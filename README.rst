===================
EFTCosmoMC
===================

Thanks for downloading EFTCosmoMC! This is EFTCosmoMC_Oct15, which is compatible with CosmoMC_Jul15.

In order to build EFTCosmoMC, please follow these steps:

1. Download cosmomc version Jul15;

2. Replace the default camb folder with the EFTCAMB one (see the readme of EFTCAMB);

3. Replace the relevant CosmoMC files with the corresponding EFTCosmoMC ones;

4. configure the Makefile according to your Fortran and MPI compiler;

5. $make all;

6. $mpirun -np 8 ./cosmomc EFT_params.ini to test that the build is working;

--
EFTCAMB team
Oct/2015

===================
CosmoMC
===================
:CosmoMC:  Fortran 2008 parallelized MCMC sampler (general and cosmology)
:Homepage: http://cosmologist.info/cosmomc/

Description and installation
=============================

For full details see the `ReadMe <https://cosmologist.info/cosmomc/readme.html>`_.

Algorithm details
==================

See the latest `paper <http://arxiv.org/abs/1304.4473>`_.

GetDist
===================

CosmoMC includes the GetDist python sample analysis and plotting package, which is
also `available separately <http://getdist.readthedocs.org/en/latest/>`_.
