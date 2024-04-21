grep -A 10 'perm       ind' luc_cz_ex_0005_20K.out | grep -wv '\--' |grep -wv 'perm' > ex_0005_20K.dat

edit  ex_0005_20K.dat (to remove all the block with zero osc in the beginning part of ex_0005_20K.dat)
	      
cp ex_0005_20K.dat osc.dat

./xsumosc> ex_0005_20K.out

edit ex_0005_20K.out  (to remove the 1st column in it)
	      
./xget_his_e_osc <e_osc.inp
	      
	      using the *.out as input file
	      using the desired # of bins (10 or 20)
