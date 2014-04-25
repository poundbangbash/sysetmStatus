echo "Uptime"
echo "=============================="
uptime
echo ""
echo ""
echo "Top 5 samples of top 5 processes"
echo "=============================="
top -o cpu -l 5 -n 5
echo ""
echo ""
echo "Currently Running Applications"
echo "=============================="
osascript -e "tell application \"Finder\"
	get the name of every process whose visible is true
end tell"
echo ""
echo ""
echo "HD SMART status"
echo "=============================="
diskutil info disk0 | grep SMART
echo ""
echo ""
echo "Drive sizes"
echo "=============================="
df -h