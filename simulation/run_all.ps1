# Runs every netlist in this folder with ngspice (batch mode).
# Install ngspice first: https://ngspice.sourceforge.io/download.html
Get-ChildItem -Filter *.cir | ForEach-Object {
    Write-Host "Running $($_.Name)"
    ngspice -b $_.Name
}
