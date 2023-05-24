#!/bin/bash
set -eux

# ARGUMENTS
# $1 name for new package
new_name=$1
# $2 template name to use
template_name="${2:-default}"


new_base_dir="${HOME}/src/pkgbuild"
template_dir="${HOME}/src/pkgbuild/_templates"
github_namespace='joelsgp-pkgbuild'
aur_prefix='ssh://aur@aur.archlinux.org'
# todo customise gitignore for vcs packages
# need to use a templating engine or sed or something
default_files=('.gitignore')
new_dir="${new_base_dir}/${new_name}"

# create repo
git init --initial-branch=master "${new_dir}"
# add mirror remote
gh repo create "${github_namespace}/${new_name}" --public --remote 'origin' --source "${new_dir}"
# add aur remote
git -C "${new_dir}" remote add aur "${aur_prefix}/${new_name}"

# copy template files
# todo fill in pkgname from provided new_time
cp "${template_dir}/PKGBUILD.${template_name}" "${new_dir}/PKGBUILD"
cd "${template_dir}"
cp -t "${new_dir}" "${default_files[@]}"
