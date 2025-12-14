# Script to push to GitHub
# Replace YOUR_USERNAME and YOUR_REPO_NAME with your actual GitHub details

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername,
    
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)

$gitPath = "C:\Program Files\Git\bin\git.exe"
$remoteUrl = "https://github.com/$GitHubUsername/$RepoName.git"

Write-Host "Adding remote repository..." -ForegroundColor Cyan
& $gitPath remote add origin $remoteUrl

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
& $gitPath branch -M main
& $gitPath push -u origin main

Write-Host ""
Write-Host "Done! Your code has been pushed to GitHub." -ForegroundColor Green
Write-Host "Repository URL: $remoteUrl" -ForegroundColor Cyan





