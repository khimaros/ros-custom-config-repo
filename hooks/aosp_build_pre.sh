#!/usr/bin/env bash

cd "${AOSP_BUILD_DIR}"

echo "applying microg patches"
cd "${AOSP_BUILD_DIR}/packages/modules/Permission"
patch -p1 --no-backup-if-mismatch < "${AOSP_BUILD_DIR}/platform/prebuilts/microg/00001-fake-package-sig.patch"
cd "${AOSP_BUILD_DIR}/frameworks/base"
patch -p1 --no-backup-if-mismatch < "${AOSP_BUILD_DIR}/platform/prebuilts/microg/00002-microg-sigspoof.patch"

# apply community patches
#echo "applying community patches"
#community_patches_dir="${ROOT_DIR}/community_patches"
#rm -rf "${community_patches_dir}"
#git clone https://github.com/rattlesnakeos/community_patches "${community_patches_dir}"
#patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00001-global-internet-permission-toggle.patch"
#patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00005-2-button-navigation.patch"
#patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00007-set-seedvault-as-dftl-bkp-provider.patch"
