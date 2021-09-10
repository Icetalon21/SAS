***DRAFT - CONFIDENTIAL ATTORNEY WORK PRODUCT***;
footnote "DRAFT - CONFIDENTIAL ATTORYNEY WORK PRODUCT";
*SAS Assignment 2;
*Author: Emilia Huerta;

libname train 'O:\Training Materials\__SAS Assignments\Analyst Training Folders\Emilia Huerta\2nd Assignment';

proc sort data=Train.Priv out=PRI;
	by DATE;
run;
proc sort data=Train.Hourlyearnings out=EARN;
	by DATE;
run;
proc sort data=Train.Trade out=TRA;
	by DATE;
run;

DATA COMBO;
	MERGE PRI EARN TRA;
	BY DATE;
run;
	*COMBO has 2 variables
	 COMBO has 832 observations;
 
