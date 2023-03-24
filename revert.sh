cd
cd yaap

###############################################################################################

# Settings

echo "Cloning Settings"
sleep 2
rm -rf packages/apps/Settings
git clone https://github.com/yaap/packages_apps_Settings.git -b thirteen packages/apps/Settings
git clone https://github.com/yaap/packages_apps_YASP.git -b thirteen packages/apps/Settings/YASP
echo "Reverting Settings Commits"
sleep 2
cd packages/apps/Settings
git revert --no-edit 3afe8e714e62ca98dddff5452bf9885da2102b7b

cd
cd yaap
