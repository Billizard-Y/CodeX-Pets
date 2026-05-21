param(
    [string]$PetId = "hoop-chick"
)

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceDir = Join-Path $RepoRoot $PetId
$PetJson = Join-Path $SourceDir "pet.json"
$Spritesheet = Join-Path $SourceDir "spritesheet.webp"

if (-not (Test-Path -LiteralPath $PetJson)) {
    throw "Missing pet manifest: $PetJson"
}

if (-not (Test-Path -LiteralPath $Spritesheet)) {
    throw "Missing spritesheet: $Spritesheet"
}

$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$PetsDir = Join-Path $CodexHome "pets"
$TargetDir = Join-Path $PetsDir $PetId

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -LiteralPath $PetJson -Destination (Join-Path $TargetDir "pet.json") -Force
Copy-Item -LiteralPath $Spritesheet -Destination (Join-Path $TargetDir "spritesheet.webp") -Force

Write-Host "Installed $PetId to $TargetDir"
Write-Host "Open Codex Desktop > Settings > Personalization > Pets, then click Refresh and select the pet."
