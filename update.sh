export SHELLCHECK_OPTS="--shell=bash -e SC2034 -e SC2148 -e SC2154 -e SC2155 -e SC1091 -e SC1090"
fdfind ".*\.sh$" ./openwrt/ -x sh -c "mkdir -p results/{//}; shellcheck {} > results/{}" \;
fdfind -t e -x rm -rf {} \;
AFFECTED_FILES=$(fdfind . results/ -t f | wc -l)
echo -e "# OpenWrt shellcheck bot\n" > README.md
echo -e "Total of $AFFECTED_FILES files affected\n" >> README.md
echo -e "Last updated $(date)\n" >> README.md
git config --local user.email "bot@openwrt.org"
git config --local user.name "OpenWrt Bot"
git add ./results/
git add ./README.md
git commit -m "$AFFECTED_FILES need fixups" -a
