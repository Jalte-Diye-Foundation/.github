param(
    [string]$Repo = "Jalte-Diye-Foundation/GVan"
)

$title = "Update Individual Reports and Review Projects@JDF"

$body = @"
Ensure all project documentation is current following the completion of GVan and the transition to Cogentic.

## Tasks

### Update GVan Individual Report
- Review your individual GVan report available in Google Drive.
- Update all activities completed during the final week.
- Document contributions, challenges, learnings, and outcomes.

### Start Cogentic Individual Report
- Create or update your individual Cogentic report.
- Document research, design, development, meetings, and learnings.

### Review Projects@JDF
- Review all pending tasks.
- Identify tasks relevant to your project.
- Prepare status updates and blockers.

## Deliverables
- Updated GVan report
- Initial Cogentic report
- Projects@JDF review completed

## Priority
High
"@

gh issue create `
    --repo $Repo `
    --title $title `
    --body $body