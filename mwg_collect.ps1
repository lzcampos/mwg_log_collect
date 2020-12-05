$conf = (Get-Content .\account.json | ConvertFrom-Json )

$saas = conf.saas
$request = conf.request
$syslog = conf.syslog
$proxyURL = conf.proxyURL
$filter = ""

$header = @{'Accept' = 'application/json'; 'X-My-Header' = 'Hello World'}

Invoke-WebRequest -Uri (https:///$saas.host/api/reporting/forensic/$saas.customerID?$filter)