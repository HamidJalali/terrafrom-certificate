provider "github" {
    token = "TODO"
}


resource "github_repository" "github-repo" {
    name = "test-repo-via-terraform"
    description = "My awesome web page"

}