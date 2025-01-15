# shinyapps-actions

Use this action to easily deploy your code to shinyapps.io.

## Example usage:

Go check out the existing [r-base dockerhub versions](https://hub.docker.com/_/r-base/tags) for the R version of your shiny app.

Full exemple for a `.github/workflows/deploy.yml`:

```yml
name: Deploy Shiny App

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - name: Deploy to ShinyApps.io
        uses: qwert666/shinyapps-actions@main
        with:
          r-version: '4.0.3'  # Specify the desired R version
          SHINY_USERNAME: ${{ secrets.SHINY_USERNAME }}
          SHINY_TOKEN: ${{ secrets.SHINYAPP_TOKEN }}
          SHINY_SECRET: ${{ secrets.SHINYAPP_SECRET }}
          APP_NAME: 'myApp'
          APP_DIR: 'path/to/app'

```
