chmod +x .env.local
source .env.local
export CONTENTFUL_MANAGEMENT_TOKEN=$CONTENTFUL_MANAGEMENT_TOKEN
export CONTENTFUL_SPACE_ID=$CONTENTFUL_SPACE_ID
export CONTENTFUL_ENVIRONMENT=$CONTENTFUL_ENVIRONMENT
cf-content-types-generator -e $CONTENTFUL_ENVIRONMENT -s $CONTENTFUL_SPACE_ID -t $CONTENTFUL_MANAGEMENT_TOKEN -o ./types
