# PowerShell Script to Copy and Rename All Media Files
# This script copies files from Downloads to the assets folders

$downloadsPath = "C:\Users\adina\Downloads"
$assetsPath = ".\assets"

Write-Host "Starting file copy process..." -ForegroundColor Green
Write-Host ""

# Function to copy file with error handling
function Copy-FileSafe {
    param(
        [string]$Source,
        [string]$Destination
    )
    
    if (Test-Path $Source) {
        try {
            Copy-Item -Path $Source -Destination $Destination -Force
            Write-Host "[OK] Copied: $(Split-Path $Destination -Leaf)" -ForegroundColor Green
            return $true
        }
        catch {
            Write-Host "[ERROR] Failed to copy: $Source" -ForegroundColor Red
            Write-Host "  Error: $_" -ForegroundColor Red
            return $false
        }
    }
    else {
        Write-Host "[WARNING] File not found: $Source" -ForegroundColor Yellow
        return $false
    }
}

# Create directories if they don't exist
New-Item -ItemType Directory -Force -Path "$assetsPath\images" | Out-Null
New-Item -ItemType Directory -Force -Path "$assetsPath\audio" | Out-Null
New-Item -ItemType Directory -Force -Path "$assetsPath\video" | Out-Null

Write-Host "=== Copying Logo ===" -ForegroundColor Cyan
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-03-02 at 12.21.21 AM.jpeg" "$assetsPath\images\logo.jpeg"

Write-Host ""
Write-Host "=== Copying Audio Files ===" -ForegroundColor Cyan
Copy-FileSafe "$downloadsPath\WhatsApp Audio 2025-12-10 at 8.09.28 PM.mpeg" "$assetsPath\audio\background-home.mpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Audio 2025-12-06 at 11.39.21 PM.mpeg" "$assetsPath\audio\background-gallery.mpeg"
Copy-FileSafe "$downloadsPath\awesome_chillar.mp3" "$assetsPath\audio\awesome_chillar.mp3"

Write-Host ""
Write-Host "=== Copying Video Files ===" -ForegroundColor Cyan
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-12-19 at 12.09.45 AM.mp4" "$assetsPath\video\hero-video.mp4"
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-12-01 at 1.40.16 PM.mp4" "$assetsPath\video\birthday-gift.mp4"
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-05-02 at 2.10.31 PM.mp4" "$assetsPath\video\bts-video1.mp4"
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-12-17 at 2.04.50 PM.mp4" "$assetsPath\video\bts-video2.mp4"
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-12-23 at 3.26.32 PM.mp4" "$assetsPath\video\laadle-1.mp4"
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-12-23 at 3.29.17 PM.mp4" "$assetsPath\video\laadle-2.mp4"
Copy-FileSafe "$downloadsPath\WhatsApp Video 2025-12-23 at 3.24.43 PM.mp4" "$assetsPath\video\laadle-3.mp4"

Write-Host ""
Write-Host "=== Copying Special Mention Images ===" -ForegroundColor Cyan
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-12 at 6.04.12 PM.jpeg" "$assetsPath\images\jadhav-dada.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-12 at 3.20.55 PM.jpeg" "$assetsPath\images\sai-radha.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-03-04 at 3.19.43 PM.jpeg" "$assetsPath\images\divijaa.jpeg"

Write-Host ""
Write-Host "=== Copying Video Poster ===" -ForegroundColor Cyan
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-06 at 8.15.30 PM.jpeg" "$assetsPath\images\video-poster.jpeg"

Write-Host ""
Write-Host "=== Copying Collage Images ===" -ForegroundColor Cyan
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-07 at 10.58.55 PM (3).jpeg" "$assetsPath\images\collage-1.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-07 at 10.58.55 PM (1).jpeg" "$assetsPath\images\collage-2.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-07 at 10.58.55 PM (2).jpeg" "$assetsPath\images\collage-3.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-07 at 10.58.56 PM.jpeg" "$assetsPath\images\collage-4.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-07 at 10.58.56 PM (1).jpeg" "$assetsPath\images\collage-5.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-12 at 12.20.29 AM.jpeg" "$assetsPath\images\collage-6.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-18 at 12.05.52 AM.jpeg" "$assetsPath\images\collage-7.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-12 at 12.20.23 AM.jpeg" "$assetsPath\images\collage-8.jpeg"
Copy-FileSafe "$downloadsPath\WhatsApp Image 2025-12-07 at 10.58.55 PM.jpeg" "$assetsPath\images\collage-9.jpeg"

Write-Host ""
Write-Host "=== Copying Gallery Images ===" -ForegroundColor Cyan
Write-Host "Copying and renaming gallery images to numbered format..." -ForegroundColor Yellow

# Gallery images mapping (in order as they appear in HTML)
$galleryImages = @(
    "WhatsApp Image 2025-08-19 at 2.33.30 PM.jpeg",
    "WhatsApp Image 2025-03-04 at 2.53.03 PM.jpeg",
    "WhatsApp Image 2025-02-26 at 12.49.15 PM.jpeg",
    "WhatsApp Image 2025-12-04 at 11.54.23 AM.jpeg",
    "WhatsApp Image 2025-02-26 at 12.49.14 PM (1).jpeg",
    "WhatsApp Image 2025-12-07 at 4.10.29 AM.jpeg",
    "WhatsApp Image 2025-03-02 at 2.45.01 PM.jpeg",
    "WhatsApp Image 2025-03-02 at 2.41.13 PM.jpeg",
    "WhatsApp Image 2025-02-26 at 12.56.54 PM.jpeg",
    "WhatsApp Image 2025-03-02 at 2.51.47 PM.jpeg",
    "WhatsApp Image 2025-03-02 at 2.51.47 PM (1).jpeg",
    "WhatsApp Image 2025-03-04 at 2.51.59 PM.jpeg",
    "WhatsApp Image 2025-03-04 at 2.50.52 PM (1).jpeg",
    "WhatsApp Image 2025-02-26 at 12.50.38 PM.jpeg",
    "WhatsApp Image 2025-12-07 at 4.36.07 AM.jpeg",
    "WhatsApp Image 2025-12-07 at 1.06.26 PM.jpeg",
    "WhatsApp Image 2025-03-04 at 3.04.44 PM.jpeg",
    "WhatsApp Image 2025-03-04 at 2.53.52 PM.jpeg",
    "WhatsApp Image 2025-03-17 at 4.47.27 PM.jpeg",
    "WhatsApp Image 2025-12-07 at 12.58.50 PM.jpeg",
    "WhatsApp Image 2025-03-19 at 2.09.36 PM.jpeg",
    "WhatsApp Image 2025-03-19 at 2.20.09 PM.jpeg",
    "WhatsApp Image 2025-03-19 at 2.58.11 PM.jpeg",
    "WhatsApp Image 2025-12-07 at 3.39.32 AM.jpeg",
    "WhatsApp Image 2025-12-07 at 4.27.17 AM.jpeg",
    "WhatsApp Image 2025-03-28 at 6.44.54 PM.jpeg",
    "WhatsApp Image 2025-03-28 at 6.45.30 PM.jpeg",
    "WhatsApp Image 2025-12-07 at 1.14.18 PM.jpeg",
    "WhatsApp Image 2025-04-01 at 3.30.04 PM.jpeg",
    "WhatsApp Image 2025-12-09 at 2.52.59 PM.jpeg",
    "WhatsApp Image 2025-04-01 at 3.45.02 PM (1).jpeg",
    "WhatsApp Image 2025-12-07 at 1.31.18 PM.jpeg",
    "WhatsApp Image 2025-12-09 at 2.52.59 PM (1).jpeg",
    "WhatsApp Image 2025-12-09 at 2.59.35 PM.jpeg",
    "WhatsApp Image 2025-12-09 at 2.52.59 PM (2).jpeg",
    "WhatsApp Image 2025-12-09 at 3.04.30 PM.jpeg",
    "WhatsApp Image 2025-12-09 at 2.52.59 PM (3).jpeg",
    "WhatsApp Image 2025-12-07 at 1.08.12 PM.jpeg",
    "WhatsApp Image 2025-04-01 at 3.45.02 PM.jpeg",
    "WhatsApp Image 2025-12-07 at 4.24.44 AM.jpeg"
)

$galleryNumber = 1
foreach ($image in $galleryImages) {
    $source = "$downloadsPath\$image"
    $destination = "$assetsPath\images\gallery-$galleryNumber.jpeg"
    Copy-FileSafe $source $destination
    $galleryNumber++
}

Write-Host ""
Write-Host "=== Summary ===" -ForegroundColor Cyan
$imageCount = (Get-ChildItem "$assetsPath\images" -File).Count
$audioCount = (Get-ChildItem "$assetsPath\audio" -File).Count
$videoCount = (Get-ChildItem "$assetsPath\video" -File).Count

Write-Host "Images copied: $imageCount" -ForegroundColor Green
Write-Host "Audio files copied: $audioCount" -ForegroundColor Green
Write-Host "Video files copied: $videoCount" -ForegroundColor Green
Write-Host ""
Write-Host "File copy process completed!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Review the files in the assets folders" -ForegroundColor White
Write-Host "2. Test your site locally by opening index.html in a browser" -ForegroundColor White
Write-Host "3. Commit and push to GitHub:" -ForegroundColor White
Write-Host "   git add assets/" -ForegroundColor Cyan
Write-Host "   git add *.html" -ForegroundColor Cyan
Write-Host '   git commit -m "Add media files and update paths"' -ForegroundColor Cyan
Write-Host "   git push" -ForegroundColor Cyan
