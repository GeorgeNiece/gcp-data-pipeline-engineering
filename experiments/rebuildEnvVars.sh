cd ~/ci-cd-for-data-processing-workflow/env-setup
source set_env.sh
set_composer_variables.sh
export COMPOSER_DAG_BUCKET=$(gcloud composer environments describe $COMPOSER_ENV_NAME \
    --location $COMPOSER_REGION \
    --format="get(config.dagGcsPrefix)")
export COMPOSER_SERVICE_ACCOUNT=$(gcloud composer environments describe $COMPOSER_ENV_NAME \
    --location $COMPOSER_REGION \
    --format="get(config.nodeConfig.serviceAccount)")
gcloud config set account student10@innovationinsoftware.com
gcloud auth configure-docker
git config --global user.email "student10@innovationinsoftware.com"
git config --global user.name "George Niece"




