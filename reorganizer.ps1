# Create all folders
$folders = @(
    "data/raw",
    "data/processed",
    "data/external",
    "notebooks/exploration",
    "notebooks/experiments",
    "src/data",
    "src/models",
    "src/utils",
    "src/analysis",
    "experiments/configs",
    "experiments/logs",
    "experiments/results",
    "reports/figures",
    "reports/paper"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
    New-Item -ItemType File -Force -Path (Join-Path $folder ".gitkeep") | Out-Null
}

# Create __init__.py in src
New-Item -ItemType File -Force -Path "src/__init__.py" | Out-Null
