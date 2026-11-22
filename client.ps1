$client = New-Object System.Net.Sockets.TcpClient("127.0.0.1", 6379)
$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$reader = New-Object System.IO.StreamReader($stream)
$writer.NewLine = "`r`n"

# Send command 1
$writer.Write("*2`r`n`$4`r`nPING`r`n`$9`r`nHAYASHING`r`n")
$writer.Flush()
$reader.ReadLine()  # Read response

# Send command 2
$writer.Write("*1`r`n`$4`r`nPING`r`n")
$writer.Flush()
$reader.ReadLine()  # Read response
