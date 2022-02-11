
label define vlE8022201 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022201 vlE8022201

label define vlE8022202 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022202 vlE8022202

label define vlE8022203 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022203 vlE8022203

label define vlE8022204 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022204 vlE8022204

label define vlE8022205 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022205 vlE8022205

label define vlE8022206 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022206 vlE8022206

label define vlE8022207 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022207 vlE8022207

label define vlE8022208 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022208 vlE8022208

label define vlE8022209 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022209 vlE8022209

label define vlE8022210 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022210 vlE8022210

label define vlE8022211 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022211 vlE8022211

label define vlE8022212 0 "0: R not incarcerated in this month and not incarcerated in a previous month"  1 "1: R was incarcerated during all or some of this month"  99 "99: R incarcerated previously but not in this month" 
label values E8022212 vlE8022212

label define vlR0000100 0 "0"  1 "1 TO 999"  1000 "1000 TO 1999"  2000 "2000 TO 2999"  3000 "3000 TO 3999"  4000 "4000 TO 4999"  5000 "5000 TO 5999"  6000 "6000 TO 6999"  7000 "7000 TO 7999"  8000 "8000 TO 8999"  9000 "9000 TO 9999" 
label values R0000100 vlR0000100

label define vlR0536300 1 "Male"  2 "Female"  0 "No Information" 
label values R0536300 vlR0536300

label define vlR0536401 1 "1: January"  2 "2: February"  3 "3: March"  4 "4: April"  5 "5: May"  6 "6: June"  7 "7: July"  8 "8: August"  9 "9: September"  10 "10: October"  11 "11: November"  12 "12: December" 
label values R0536401 vlR0536401

label define vlR1235800 1 "Cross-sectional"  0 "Oversample" 
label values R1235800 vlR1235800

label define vlR1482600 1 "Black"  2 "Hispanic"  3 "Mixed Race (Non-Hispanic)"  4 "Non-Black / Non-Hispanic" 
label values R1482600 vlR1482600
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */
  /* *start* */
/*
  rename E8022201 INCARC_STATUS_2002_01_XRND   // INCARC_STATUS_2002.01
  rename E8022202 INCARC_STATUS_2002_02_XRND   // INCARC_STATUS_2002.02
  rename E8022203 INCARC_STATUS_2002_03_XRND   // INCARC_STATUS_2002.03
  rename E8022204 INCARC_STATUS_2002_04_XRND   // INCARC_STATUS_2002.04
  rename E8022205 INCARC_STATUS_2002_05_XRND   // INCARC_STATUS_2002.05
  rename E8022206 INCARC_STATUS_2002_06_XRND   // INCARC_STATUS_2002.06
  rename E8022207 INCARC_STATUS_2002_07_XRND   // INCARC_STATUS_2002.07
  rename E8022208 INCARC_STATUS_2002_08_XRND   // INCARC_STATUS_2002.08
  rename E8022209 INCARC_STATUS_2002_09_XRND   // INCARC_STATUS_2002.09
  rename E8022210 INCARC_STATUS_2002_10_XRND   // INCARC_STATUS_2002.10
  rename E8022211 INCARC_STATUS_2002_11_XRND   // INCARC_STATUS_2002.11
  rename E8022212 INCARC_STATUS_2002_12_XRND   // INCARC_STATUS_2002.12
  rename R0000100 PUBID_1997 
  rename R0536300 KEY!SEX_1997 
  rename R0536401 KEY!BDATE_M_1997 
  rename R0536402 KEY!BDATE_Y_1997 
  rename R1235800 CV_SAMPLE_TYPE_1997 
  rename R1482600 KEY!RACE_ETHNICITY_1997 

*/
  /* *end* */  
/* To convert variable names to lower case use the TOLOWER command 
 *      (type findit tolower and follow the links to install).
 * TOLOWER VARLIST will change listed variables to lower case; 
 *  TOLOWER without a specified variable list will convert all variables in the dataset to lower case
 */
/* tolower */
