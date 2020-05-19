function confix
    git diff --name-only | uniq | xargs $EDITOR
end
