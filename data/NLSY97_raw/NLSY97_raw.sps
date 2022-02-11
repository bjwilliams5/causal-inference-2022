file handle pcdat/name='NLSY97_raw.dat' /lrecl=60.
data list file pcdat free /
  E8022201 (F2)
  E8022202 (F2)
  E8022203 (F2)
  E8022204 (F2)
  E8022205 (F2)
  E8022206 (F2)
  E8022207 (F2)
  E8022208 (F2)
  E8022209 (F2)
  E8022210 (F2)
  E8022211 (F2)
  E8022212 (F2)
  R0000100 (F4)
  R0536300 (F2)
  R0536401 (F2)
  R0536402 (F4)
  R1235800 (F2)
  R1482600 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  E8022201  "2002 INCARCERATION STATUS L1"
  E8022202  "2002 INCARCERATION STATUS L2"
  E8022203  "2002 INCARCERATION STATUS L3"
  E8022204  "2002 INCARCERATION STATUS L4"
  E8022205  "2002 INCARCERATION STATUS L5"
  E8022206  "2002 INCARCERATION STATUS L6"
  E8022207  "2002 INCARCERATION STATUS L7"
  E8022208  "2002 INCARCERATION STATUS L8"
  E8022209  "2002 INCARCERATION STATUS L9"
  E8022210  "2002 INCARCERATION STATUS L10"
  E8022211  "2002 INCARCERATION STATUS L11"
  E8022212  "2002 INCARCERATION STATUS L12"
  R0000100  "PUBID - YTH ID CODE 1997"
  R0536300  "KEY!SEX (SYMBOL) 1997"
  R0536401  "KEY!BDATE M/Y (SYMBOL) 1997"
  R0536402  "KEY!BDATE M/Y (SYMBOL) 1997"
  R1235800  "CV_SAMPLE_TYPE 1997"
  R1482600  "KEY!RACE_ETHNICITY (SYMBOL) 1997"
.

* Recode continuous values. 
* recode 
    / 
 R0000100 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
.

* value labels
 E8022201
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022202
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022203
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022204
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022205
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022206
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022207
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022208
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022209
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022210
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022211
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 E8022212
    0 "0: R not incarcerated in this month and not incarcerated in a previous month"
    1 "1: R was incarcerated during all or some of this month"
    99 "99: R incarcerated previously but not in this month"
    /
 R0000100
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    /
 R0536300
    1 "Male"
    2 "Female"
    0 "No Information"
    /
 R0536401
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R1235800
    1 "Cross-sectional"
    0 "Oversample"
    /
 R1482600
    1 "Black"
    2 "Hispanic"
    3 "Mixed Race (Non-Hispanic)"
    4 "Non-Black / Non-Hispanic"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (E8022201 = INCARC_STATUS_2002_01_XRND)   /* INCARC_STATUS_2002.01 */
  (E8022202 = INCARC_STATUS_2002_02_XRND)   /* INCARC_STATUS_2002.02 */
  (E8022203 = INCARC_STATUS_2002_03_XRND)   /* INCARC_STATUS_2002.03 */
  (E8022204 = INCARC_STATUS_2002_04_XRND)   /* INCARC_STATUS_2002.04 */
  (E8022205 = INCARC_STATUS_2002_05_XRND)   /* INCARC_STATUS_2002.05 */
  (E8022206 = INCARC_STATUS_2002_06_XRND)   /* INCARC_STATUS_2002.06 */
  (E8022207 = INCARC_STATUS_2002_07_XRND)   /* INCARC_STATUS_2002.07 */
  (E8022208 = INCARC_STATUS_2002_08_XRND)   /* INCARC_STATUS_2002.08 */
  (E8022209 = INCARC_STATUS_2002_09_XRND)   /* INCARC_STATUS_2002.09 */
  (E8022210 = INCARC_STATUS_2002_10_XRND)   /* INCARC_STATUS_2002.10 */
  (E8022211 = INCARC_STATUS_2002_11_XRND)   /* INCARC_STATUS_2002.11 */
  (E8022212 = INCARC_STATUS_2002_12_XRND)   /* INCARC_STATUS_2002.12 */
  (R0000100 = PUBID_1997) 
  (R0536300 = KEY_SEX_1997)   /* KEY!SEX */
  (R0536401 = KEY_BDATE_M_1997)   /* KEY!BDATE_M */
  (R0536402 = KEY_BDATE_Y_1997)   /* KEY!BDATE_Y */
  (R1235800 = CV_SAMPLE_TYPE_1997) 
  (R1482600 = KEY_RACE_ETHNICITY_1997)   /* KEY!RACE_ETHNICITY */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=E8022201, 
  E8022202, 
  E8022203, 
  E8022204, 
  E8022205, 
  E8022206, 
  E8022207, 
  E8022208, 
  E8022209, 
  E8022210, 
  E8022211, 
  E8022212, 
  R0000100, 
  R0536300, 
  R0536401, 
  R0536402, 
  R1235800, 
  R1482600.

*--- Tabulations using qname variables.
*freq var=INCARC_STATUS_2002_01_XRND, 
  INCARC_STATUS_2002_02_XRND, 
  INCARC_STATUS_2002_03_XRND, 
  INCARC_STATUS_2002_04_XRND, 
  INCARC_STATUS_2002_05_XRND, 
  INCARC_STATUS_2002_06_XRND, 
  INCARC_STATUS_2002_07_XRND, 
  INCARC_STATUS_2002_08_XRND, 
  INCARC_STATUS_2002_09_XRND, 
  INCARC_STATUS_2002_10_XRND, 
  INCARC_STATUS_2002_11_XRND, 
  INCARC_STATUS_2002_12_XRND, 
  PUBID_1997, 
  KEY_SEX_1997, 
  KEY_BDATE_M_1997, 
  KEY_BDATE_Y_1997, 
  CV_SAMPLE_TYPE_1997, 
  KEY_RACE_ETHNICITY_1997.
