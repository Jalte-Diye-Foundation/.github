$file = "docs/MoMs/meeting-2026-06-13.md"

Get-Content $file |
Where-Object { $_ -match '^- \[ \]' } |
ForEach-Object {

    $title = $_ -replace '^- \[ \] ', ''

    gh issue create `
        --title $title `
        --body "Created automatically from meeting notes."

    Write-Host "Created issue: $title"
}
