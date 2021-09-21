![keep your free servers awaken](static/awake-action.svg "keep your free servers awaken")

# Keep your free servers, clusters, dynos awaken

## Contributions

1. Give this project a ⭐️
2. Pull requests and issues are most welcome

## Quick start

At the root of your project, create the file/folders structure: `.github/workflows/awake.yml`

Paste the following lines into your `awake.yml` file:

```yml
name: Awake Action
on:
  schedule:
    # every 45 minutes, the steps below are triggered
    - cron: "45 * * * *"

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: main-awake
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: "YOUR_URL_TO_AWAKE"
```

## Advanced usages

### Use secret url

In case you don't want your uri to be public, follow the next steps:

Under your repository `Settings` > `Secrets`, click `New repository secret` and add your `SECRET_URI`.

### Awake many endpoints

The following `awake.yml` file awakes two uri : a secret and a public one.

```yml
name: Awake Action
on:
  schedule:
    - cron: "45 * * * *"

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      # awake a secret uri
      - name: secret-awake
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: ${{ secrets.SECRET_URI }}

      # awake another public uri
      - name: awake-heroku-client
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: "YOUR_HEROKU_URL"

      # add uri as many as you want
      # ...
```
