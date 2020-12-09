data employee_info;
input emp_id emp_name$ emp_vertical$;
datalines;
101 james sas
102 jacob pythob
103 edward r
104 bella tableau
105 reene hadoop
;
run;

proc print data=employee_info;
run;

data employee_info;
input emp_id emp_name$ emp_vertical$ DOJ;
informat DOJ ddmmyy10.;
datalines;
101 james sas 10/01/2013
102 jacob pythob 12/01/2014
103 edward r 19/03/2015
104 bella tableau 23/09/2020
105 reene hadoop 19/12/2000
;
run;

proc print data=employee_info;
run;

data employee_info;
input emp_id emp_name$ emp_vertical$ DOJ;
informat DOJ ddmmyy10.;
FORMAT DOJ ddmmyy10.;
datalines;
101 james sas 10/01/2013
102 jacob pythob 12/01/2014
103 edward r 19/03/2015
104 bella tableau 23/09/2020
105 reene hadoop 19/12/2000
;
run;

proc print data=employee_info;
run;

