data t1;
input id name$;
datalines;
101 aditi
102 joy
103 ray
104 jacob
105 edward
;
proc print data=t1;

data t2;
input dept$ location$;
datalines;
IT Delhi
IT Mumbai
HR Delhi
HR Mumbai
IT Delhi
;
proc print data=t2;

data combined;
set t1 t2;
run;

data t3;
input id name$;
datalines;
106 bella
107 renne
;
proc print data=t3;

data combined1;
set t1 t3;
run;

proc sort data=t2 out=sorted nodupkey;
by = dept;
run;

data t4;
input id dept$ location$;
datalines;
101 IT Delhi
102 IT Mumbai
103 HR Delhi
104 HR Mumbai
105 IT Delhi
;
proc print data=t4;

data combined2;
merge t1 t4;
by id;
run;

