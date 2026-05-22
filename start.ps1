#!/usr/bin/env pwsh
# Quick start script for tabletop-atlas development

Write-Host "Building frontend..." -ForegroundColor Cyan
Set-Location frontend
pnpm build

if ($LASTEXITCODE -ne 0) {
    Write-Host "Frontend build failed!" -ForegroundColor Red
    Set-Location ..
    exit 1
}

Write-Host "`nStarting development servers..." -ForegroundColor Cyan
Set-Location ..

# Open browser after a short delay (in background job)
Start-Job -ScriptBlock {
    Start-Sleep -Seconds 3
    Start-Process "http://localhost:8080"
} | Out-Null

# Start dev servers (this will block)
pnpm run dev
