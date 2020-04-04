# A simple script for backing up from smb share
# Replace xxx with freenas ip
echo "Prepare to run rsync dry run"
rsync -a -v --delete --dry-run evan@192.168.1.xxx: ~/backups/
echo "--- Dry run finished ---"
echo
read -p "Continue ? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rsync -a -v --delete evan@192.168.1.100: ~/backups/
fi
