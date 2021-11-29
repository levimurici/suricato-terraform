cat <<EOF> $1
[url "ssh://git@github.com/"]
        insteadOf = https://github.com/
[core]
        repositoryformatversion = 0
        filemode = false
        bare = false
        logallrefupdates = true
        ignorecase = true
[remote "origin"]
        url = https://github.com/levimurici/suricato-terraform
        fetch = +refs/heads/*:refs/remotes/origin/*
[branch "main"]
        remote = origin
        merge = refs/heads/main
EOF
