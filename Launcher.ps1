$host.ui.RawUI.WindowTitle = "MapleStory"
$pname = "MapleStory"
# $localname = "Destiny2"
$localname = "MapleStory"
# while (1) {
    $t = 0
    while (!$p) {
        if (!$p) {
            # $lp = Get-CimInstance Win32_Process -Filter "name = '$localname.exe'" | Select-Object -first 1
            if (!$lp) {
                $p = Get-CimInstance Win32_Process -Filter "name = '$pname.exe'" | Select-Object -first 1
                Write-Output "Waiting for official process $pname.exe: $t s"
            } else {
                $t = 0
                Write-Output "Found local process $localname.exe, standby."
            }
        }
        Start-Sleep -s 1
        $t = $t + 1
    }
    Write-Output "Extracting user info from official process $pname.exe";
    $path, $endpoint, $port, $channel, $username, $password = $p.CommandLine.split(' ')
    # Write-Output $p, $username, $password
    Write-Output "Stopping official process";
    Stop-Process -Force -Name $pname
    Write-Output "Starting local process";
    # Write-Output "$endpoint $port $channel $username $password";
    # pause;
    Start-Process "H:\OneDrive\Program Files\Locale.Emulator.2.4.1.0\LEProc.exe" -ArgumentList "-run `"E:\Gamania\MapleStory\$localname.exe`" $endpoint $port $channel $username $password"    
    Write-Output "MapleStory started";
    # $p = ''
    Start-Sleep -s 1
# }
cmd /c pause | out-null
