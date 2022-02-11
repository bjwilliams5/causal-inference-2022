options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY97_raw.dat' lrecl=60 missover DSD DLM=' ' print;
input
  E8022201
  E8022202
  E8022203
  E8022204
  E8022205
  E8022206
  E8022207
  E8022208
  E8022209
  E8022210
  E8022211
  E8022212
  R0000100
  R0536300
  R0536401
  R0536402
  R1235800
  R1482600
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label E8022201 = "2002 INCARCERATION STATUS L1";
  label E8022202 = "2002 INCARCERATION STATUS L2";
  label E8022203 = "2002 INCARCERATION STATUS L3";
  label E8022204 = "2002 INCARCERATION STATUS L4";
  label E8022205 = "2002 INCARCERATION STATUS L5";
  label E8022206 = "2002 INCARCERATION STATUS L6";
  label E8022207 = "2002 INCARCERATION STATUS L7";
  label E8022208 = "2002 INCARCERATION STATUS L8";
  label E8022209 = "2002 INCARCERATION STATUS L9";
  label E8022210 = "2002 INCARCERATION STATUS L10";
  label E8022211 = "2002 INCARCERATION STATUS L11";
  label E8022212 = "2002 INCARCERATION STATUS L12";
  label R0000100 = "PUBID - YTH ID CODE 1997";
  label R0536300 = "KEY!SEX (SYMBOL) 1997";
  label R0536401 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R0536402 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R1235800 = "CV_SAMPLE_TYPE 1997";
  label R1482600 = "KEY!RACE_ETHNICITY (SYMBOL) 1997";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  E8022201 = 'INCARC_STATUS_2002.01_XRND'n
  E8022202 = 'INCARC_STATUS_2002.02_XRND'n
  E8022203 = 'INCARC_STATUS_2002.03_XRND'n
  E8022204 = 'INCARC_STATUS_2002.04_XRND'n
  E8022205 = 'INCARC_STATUS_2002.05_XRND'n
  E8022206 = 'INCARC_STATUS_2002.06_XRND'n
  E8022207 = 'INCARC_STATUS_2002.07_XRND'n
  E8022208 = 'INCARC_STATUS_2002.08_XRND'n
  E8022209 = 'INCARC_STATUS_2002.09_XRND'n
  E8022210 = 'INCARC_STATUS_2002.10_XRND'n
  E8022211 = 'INCARC_STATUS_2002.11_XRND'n
  E8022212 = 'INCARC_STATUS_2002.12_XRND'n
  R0000100 = 'PUBID_1997'n
  R0536300 = 'KEY!SEX_1997'n
  R0536401 = 'KEY!BDATE_M_1997'n
  R0536402 = 'KEY!BDATE_Y_1997'n
  R1235800 = 'CV_SAMPLE_TYPE_1997'n
  R1482600 = 'KEY!RACE_ETHNICITY_1997'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx0f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx1f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx2f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx3f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx4f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx5f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx6f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx7f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx8f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx9f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx10f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx11f
  0='0: R not incarcerated in this month and not incarcerated in a previous month'
  1='1: R was incarcerated during all or some of this month'
  99='99: R incarcerated previously but not in this month'
;
value vx12f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
;
value vx13f
  1='Male'
  2='Female'
  0='No Information'
;
value vx14f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx16f
  1='Cross-sectional'
  0='Oversample'
;
value vx17f
  1='Black'
  2='Hispanic'
  3='Mixed Race (Non-Hispanic)'
  4='Non-Black / Non-Hispanic'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format E8022201 vx0f.;
  format E8022202 vx1f.;
  format E8022203 vx2f.;
  format E8022204 vx3f.;
  format E8022205 vx4f.;
  format E8022206 vx5f.;
  format E8022207 vx6f.;
  format E8022208 vx7f.;
  format E8022209 vx8f.;
  format E8022210 vx9f.;
  format E8022211 vx10f.;
  format E8022212 vx11f.;
  format R0000100 vx12f.;
  format R0536300 vx13f.;
  format R0536401 vx14f.;
  format R1235800 vx16f.;
  format R1482600 vx17f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'INCARC_STATUS_2002.01_XRND'n vx0f.;
  format 'INCARC_STATUS_2002.02_XRND'n vx1f.;
  format 'INCARC_STATUS_2002.03_XRND'n vx2f.;
  format 'INCARC_STATUS_2002.04_XRND'n vx3f.;
  format 'INCARC_STATUS_2002.05_XRND'n vx4f.;
  format 'INCARC_STATUS_2002.06_XRND'n vx5f.;
  format 'INCARC_STATUS_2002.07_XRND'n vx6f.;
  format 'INCARC_STATUS_2002.08_XRND'n vx7f.;
  format 'INCARC_STATUS_2002.09_XRND'n vx8f.;
  format 'INCARC_STATUS_2002.10_XRND'n vx9f.;
  format 'INCARC_STATUS_2002.11_XRND'n vx10f.;
  format 'INCARC_STATUS_2002.12_XRND'n vx11f.;
  format 'PUBID_1997'n vx12f.;
  format 'KEY!SEX_1997'n vx13f.;
  format 'KEY!BDATE_M_1997'n vx14f.;
  format 'CV_SAMPLE_TYPE_1997'n vx16f.;
  format 'KEY!RACE_ETHNICITY_1997'n vx17f.;
run;
*/