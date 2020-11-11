#!/bin/sh
set -e

echo "Authorizing $SHINY_USERNAME"

Rscript -e "rsconnect::setAccountInfo(name='$SHINY_USERNAME', token='$SHINY_TOKEN', secret='$SHINY_SECRET')"

echo "Deploying $APP_NAME from $SHINY_PATH to shinyapp.io"

APP_PATH="$GITHUB_WORKSPACE/$APP_DIR"

Rscript -e "rsconnect::deployApp(appDir='$APP_PATH', appName='$APP_NAME', launch.browser=FALSE)"

url="https://$SHINY_USERNAME.shinyapps.io/$APP_NAME/"
echo "::set-output name=url::$url"

exit 0