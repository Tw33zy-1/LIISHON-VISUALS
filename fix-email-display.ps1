$f = 'c:\Users\Tweezy 1\Documents\GitHub\LiishonVisuals\index.html'
$c = Get-Content $f -Raw
$c = $c -replace '>photographer@example.com<', '>liishonvisuals@gmail.com<'
$c | Set-Content $f
Write-Host "Email display text fixed!"
