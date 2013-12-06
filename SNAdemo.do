*Choosing a Social Network Tool: Stata Demo
*PSU QuaSSI Workshop December 6, 2013
*Nathaniel Porter, ndp135@psu.edu
*http://github.com/ndporter/snademo

*Copy mesaadj.csv, mesaatt.csv, and mesaedge.csv to a common directory

*Set working directory to your own
cd "w:\SNA Demo"

*Degree (and other symmetric centrality measures)
ssc install centpow
save mesaadj.csv, replace
centpow mesaadj.csv
use centpow.dta, clear
drop if degree==.
gen v1 = _n
save centpow, replace 

*Betweenness requires a more complicated Mata procedure- to be added later
*ssc install netsis
*More information in the helpfile

*Plot
ssc install netplot
insheet using mesaedge.csv, clear
drop v1
netplot v2 v3
