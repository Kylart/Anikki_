#!/usr/bin/env pwsh

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Platform
)

$ErrorActionPreference = "Stop"

$availablePlatforms = @("windows-x86", "windows-x64")

if (-not $Platform) {
    Write-Host "Usage: setup.ps1 <platform>"
    Write-Host "Available platforms: $($availablePlatforms -join ', ')"
    exit 1
}

$shortPlatform = ""

# Determine extension based on platform
switch ($Platform) {
    { $_ -like "windows-*" } {
        $extension = "dll"
        $shortPlatform = "windows"
        break
    }
    default {
        Write-Host "Unknown platform: $Platform"
        Write-Host "Supported platforms: $($availablePlatforms -join ', ')"
        exit 2
    }
}

# Validate platform is in available list
if ($availablePlatforms -notcontains $Platform) {
    Write-Host "Unknown platform: $Platform"
    Write-Host "Supported platforms: $($availablePlatforms -join ', ')"
    exit 2
}

$assetPath = "assets/torrest/libanitorrest-$Platform.$extension"
$pubspecFile = "../pubspec.yaml"

# Check if pubspec.yaml exists
if (-not (Test-Path $pubspecFile)) {
    Write-Host "pubspec.yaml not found at: $pubspecFile"
    exit 3
}

# Read pubspec.yaml content
$pubspecContent = Get-Content $pubspecFile

# Check if asset is already present
$assetExists = $pubspecContent | Where-Object { $_ -match [regex]::Escape($assetPath) }

if (-not $assetExists) {
    # Find the line number of 'assets:' in pubspec.yaml
    $assetsLineIndex = -1
    for ($i = 0; $i -lt $pubspecContent.Length; $i++) {
        if ($pubspecContent[$i] -match '^\s*assets\s*:') {
            $assetsLineIndex = $i
            break
        }
    }
    
    if ($assetsLineIndex -eq -1) {
        Write-Host "'assets:' section not found in $pubspecFile"
        exit 3
    }
    
    # Find the indentation used for assets
    $assetsLine = $pubspecContent[$assetsLineIndex]
    $indent = ""
    if ($assetsLine -match '^(\s*)assets\s*:') {
        $indent = $matches[1]
    }
    
    # Create new content with the asset added
    $newContent = @()
    for ($i = 0; $i -lt $pubspecContent.Length; $i++) {
        $newContent += $pubspecContent[$i]
        if ($i -eq $assetsLineIndex) {
            $newContent += "$indent  - $assetPath"
        }
    }
    
    # Write the updated content back to pubspec.yaml
    $newContent | Set-Content $pubspecFile -Encoding UTF8
    
    Write-Host "Added $assetPath to $pubspecFile"
} else {
    Write-Host "Asset $assetPath already exists in $pubspecFile"
}