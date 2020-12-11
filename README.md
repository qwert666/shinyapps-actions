# shinyapps-actions

Use this action to easily deploy your code to shinyapps.io.

## Example usage:

```
steps:
  - uses: actions/checkout@v2
    with:
        fetch-depth: 0
  - id: deploy
    name: Deploy to shinyapps.io
    uses: qwert666/shinyapps-actions@main
    env:
        SHINY_USERNAME: 'myusername'
        SHINY_TOKEN: ${{ secrets.SHINYAPP_TOKEN }}
        SHINY_SECRET: ${{ secrets.SHINYAPP_SECRET }}
        APP_NAME: 'myApp'
        APP_DIR: ''
```
