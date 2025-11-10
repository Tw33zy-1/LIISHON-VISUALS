$filePath = 'c:\Users\Tweezy 1\Documents\GitHub\LiishonVisuals\index.html'
$content = Get-Content $filePath -Raw

# Update each social link one by one
$content = $content -creplace 'href="#" aria-label="Instagram"', 'href="https://www.instagram.com/liishonvisuals/" aria-label="Instagram"'
$content = $content -creplace 'href="#" aria-label="WhatsApp"', 'href="https://api.whatsapp.com/send?phone=254758370647" aria-label="WhatsApp"'
$content = $content -creplace 'href="#" aria-label="Facebook"', 'href="https://web.facebook.com/people/Liishonvisuals/61575606180851/" aria-label="Facebook"'
$content = $content -creplace 'href="#" aria-label="TikTok"', 'href="https://www.tiktok.com/@liishon.visuals" aria-label="TikTok"'
$content = $content -creplace 'href="#" aria-label="X \(Twitter\)"', 'href="https://x.com/liishonvisuals" aria-label="X (Twitter)"'
$content = $content -creplace 'href="#" aria-label="YouTube"', 'href="https://www.youtube.com/@liishonvisualstudio" aria-label="YouTube"'

$content | Set-Content $filePath
Write-Host "All social links updated!"
