#requires -RunAsAdministrator

$now = $(get-date -f yyyy-MM-dd-hh-mm-ss)
iif (test-path "results") { mkdir "results" }
cd results
md $now
cd $now
powercfg /energy 
powercfg /batteryreport 
powercfg /srumutil 
powercfg /SYSTEMPOWERREPORT 
cd ../..

