# curl https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/3a3d399c-85e1-4872-b610-3245b7544de4/conflict_data_lka.csv > conflict_data_lka.csv

# curl https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/3638f0d6-9969-48cf-a919-1d879d037ec6/wfp_food_prices_sri-lanka.csv > food.hdx.wfp_food_prices_sri-lanka.csv

git add *
git commit -a -m "auto uploaded: $(date '+%Y-%m-%d %H:%m')"
git push origin master

open https://github.com/nuuuwan/misc-sl-data.git
