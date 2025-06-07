resource "github_membership" "org_member_suveen" {
  username = local.members.suveen
  role     = local.roles.member
} 

resource "github_membership" "org_member_aaron" {
  username = local.members.aaron
  role     = local.roles.member
} 