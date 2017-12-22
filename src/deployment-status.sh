deployment_status() {
    echo ref: $(git show-ref --abbrev | grep 'refs/heads' | sed s/refs\\/heads\\/// | head -n 1)
    echo tag: $(git tag --points-at HEAD)
    echo msg: $(git show HEAD --oneline -s --format=%s)
    echo date: $(date -R)
}
