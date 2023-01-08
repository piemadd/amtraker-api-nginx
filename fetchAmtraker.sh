# in prod, a modified version of amtraker-v3 would be running instead of this script
echo "fetching updated data."
curl https://api-v3.amtraker.com/v3/trains -H 'User-Agent: amtraker-nginx-test' -H 'Accept: application/json' --output /home/runner/amtraker_store/amtraker_prod/v3/trains