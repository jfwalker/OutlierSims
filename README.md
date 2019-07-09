# OutlierSims
Data and code used for outlier simulations


###Two topology test
This will perform the two topology test and also correct for length. The output will be the outfile and one file called ForR (which is the GWLL) and another called ForRcorrected (which is the average SSLL).

```perl perl TwoTop.pl Supermatrix.fa ModelFile TwoTrees Outfile```

The other scripts are used to get the average SSLL from a parts file and the GWLL files deposited in Shen et al. 2017. They differ between datasets to account for names. 

```perl *.pl PartsFile GeneWise```
