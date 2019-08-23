# Histórico de commits, em ordem reversa, desde um tempo pre determinado
git log --reverse --oneline --since "2016-09-09T00:00:00-00:00"

# Arquivos alterados em determinado commit
git diff-tree --no-commit-id --name-only -r $commitId

# Cria um patch
git format-patch -1 $commitId --stdout > "$patchesDir/$patchName.patch"

# Valida a aplicação de um patch
git apply --check $file

# Aplica o patch efetivamente
git am < $file

# git alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Git clone em um branch específico
git clone -b BRANCH_NAME http://github.com/nameSpace/repoName

# Change the last commig
git commit --amend
