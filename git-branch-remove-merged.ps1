Param(
    [Parameter(Mandatory=$false)]
    [String]
    $branch="master"
)

git for-each-ref --format '%(refname:short)' refs/heads --merged $branch | ForEach-Object { If("develop","master" -notcontains $_) { git branch $_ -d } }