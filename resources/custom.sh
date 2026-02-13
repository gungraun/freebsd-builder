#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.

pkg install -y curl llvm18 just npm-node25 wget git jq valgrind

# valgrind_version="3.26.0"
# freebsd_version="freebsd-$(freebsd-version | cut -d'-' -f1)"
#
# latest='null'
# retries=10
# while [ "$latest" = "null" ]; do
# 	if [ $retries -eq 0 ]; then
# 		echo "Maximum retries reached"
# 		exit 1
# 	else
# 		latest="$(curl --retry 3 -s https://api.github.com/repos/gungraun/valgrind-builder/releases/latest | jq -r .tag_name)"
# 		retries=$((retries - 1))
# 	fi
# done
#
# archive_name="valgrind-${latest}-${freebsd_version}-${valgrind_version}.tar.gz"
# archive_url="https://github.com/gungraun/valgrind-builder/releases/download/${latest}/${archive_name}"
# sha_url="${archive_url}.sha256"
#
# wget "$archive_url"
# wget "$sha_url"
# sha256sum -c "${archive_name}.sha256"
#
# sudo tar xzf "$archive_name" -C /
#
# rm -fv "${archive_name}" "${archive_name}.sha256"
