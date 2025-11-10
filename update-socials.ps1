# Update LIISHON VISUALS social links and contact info

$filePath = 'c:\Users\Tweezy 1\Documents\GitHub\LiishonVisuals\index.html'
$content = Get-Content $filePath -Raw

# Replace emails
$content = $content -replace 'mailto:photographer@example.com', 'mailto:liishonvisuals@gmail.com'

# Replace phone number
$content = $content -replace '\+1 \(555\) 555-5555', '+254 758 370 647'

# Replace Instagram link
$content = $content -replace '(Instagram.*?href=")[#]"', '${1}https://www.instagram.com/liishonvisuals/"'

# Replace WhatsApp link (the social button)
$content = $content -replace '(WhatsApp.*?href=")[#]"', '${1}https://api.whatsapp.com/send?phone=254758370647"'

# Replace Facebook link
$content = $content -replace '(Facebook.*?href=")[#]"', '${1}https://web.facebook.com/people/Liishonvisuals/61575606180851/?mibextid=wwXIfr"'

# Replace TikTok link
$content = $content -replace '(TikTok.*?href=")[#]"', '${1}https://www.tiktok.com/@liishon.visuals?_t=ZM-8vnSBjUJ1Iz&_r=1"'

# Replace X (Twitter) link
$content = $content -replace '(Twitter.*?href=")[#]"', '${1}https://x.com/liishonvisuals?s=21"'
$content = $content -replace '(aria-label="X.*?href=")[#]"', '${1}https://x.com/liishonvisuals?s=21"'

# Replace YouTube link
$content = $content -replace '(YouTube.*?href=")[#]"', '${1}https://www.youtube.com/@liishonvisualstudio"'

# Save the updated content
$content | Set-Content $filePath

Write-Host "✅ All social links and contact info updated successfully!"
