account_id="70f69f4c-cf63-43ef-9f2d-12c3ebcea07f"
api_key="35ef6bc3292647768ab853f3d54eaa2f"
location="trial"

# Get access token
token=$(curl -X GET \
  https://api.videoindexer.ai/auth/$location/Accounts/$account_id/AccessToken \
  -H 'Ocp-Apim-Subscription-Key: '$api_key'')

# Use access token to get list of videos
curl -X GET \
  https://api.videoindexer.ai/$location/Accounts/$account_id/Videos?accessToken=$token \
  -H 'Accept: application/json' | json_pp