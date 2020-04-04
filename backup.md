# A simple script for backing up from a FreeNAS smb share
Open a file editor and save the following code as `mybackup.sh`
```
echo "Prepare to run rsync dry run"
rsync -a -v --delete --dry-run evan@192.168.1.100: ~/backups/
echo "--- Dry run finished ---"
echo
read -p "Continue ? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	rsync -a -v --delete evan@192.168.1.100: ~/backups/
fi
```
Replace `evan/192.168.1.100` with your account username and FreeNAS ip
