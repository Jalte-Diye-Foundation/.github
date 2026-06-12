# create_issues_from_tasks.ps1

param(
    [string]$Repo = "Jalte-Diye-Foundation/Cogentic",
    [string]$File = "tasks_12-06-2026.md"
)

$content = Get-Content $File -Raw

$sections = [regex]::Matches(
    $content,
    '(?ms)^## \[TASK\] (.*?)$(.*?)(?=^## \[TASK\]|\Z)'
)

foreach($section in $sections)
{
    $title = $section.Groups[1].Value.Trim()
    $body  = $section.Groups[2].Value.Trim()

    Write-Host "Creating issue: $title"

    gh issue create `
        --repo $Repo `
        --title $title `
        --body $body
}