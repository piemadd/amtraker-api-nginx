# check to see if the store has been created
if [ -d "/dev/shm/amtraker" ]; then
  rm ~/amtraker_store
  rm -rf /dev/shm/amtraker
fi

# create the store
  mkdir /dev/shm/amtraker
  ln -s /dev/shm/amtraker ~/amtraker_store
  mkdir -p ~/amtraker_store/amtraker_prod/v3

echo "haiiii :D" > ~/amtraker_store/amtraker_prod/index.html
cat ~/amtraker_store/amtraker_prod/index.html

echo "starting nginx"
cp nginx.conf ~/nginx.conf
nginx -c ~/nginx.conf -e ~/nginx.log

# what's a cron job? :eee:
# in all seriousness, i would be using a cron job, but replit file system said no lol
while true
do 
  bash fetchAmtraker.sh
  sleep 180 # 3 minutes
done