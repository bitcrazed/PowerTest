#requires -RunAsAdministrator

$cwd = get-item . | select -ExpandProperty FullName
try
{
    if (!(test-path -path "results")) { mkdir "results" }
    cd results
    $now = $(get-date -f yyyy-MM-dd-hh-mm-ss)
    md $now
    cd $now
    powercfg /energy 
    powercfg /batteryreport 
    powercfg /srumutil 
    powercfg /SYSTEMPOWERREPORT 
}
finally
{
    echo ""
    cd $cwd
}
