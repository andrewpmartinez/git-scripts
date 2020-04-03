Param(
    [Parameter(Mandatory=$false,
    ValueFromPipeline=$true)]
    [String[]]
    $branches = @("master")
)


foreach($branch in $branches) {
  git-branch-remove-merged -branch $branch
}

git remote prune origin