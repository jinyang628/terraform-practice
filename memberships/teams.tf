resource "github_team" "dev_team" {
  name        = "Dev Team"
  description = "The team which moves fast and codes a lot"
}

resource "github_team" "vibe_coding_team" {
  name        = "Vibe Coding Team"
  description = "The team which uses Cursor to do everything"
}

resource "github_team_membership" "dev_team_membership_suveen" {
  team_id  = github_team.dev_team.id
  username = local.members.suveen
  role     = local.roles.member
}

resource "github_team_membership" "vibe_coding_team_membership_aaron" {
  team_id  = github_team.vibe_coding_team.id
  username = local.members.aaron
  role     = local.roles.member
}
