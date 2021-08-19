![keep your free servers awaken](static/awake-action.svg "keep your free servers awaken")

# Keep your free servers, clusters, dynos awaken

## Contributions

1. Give this project a ⭐️
2. Pull requests and issues are most welcome

## Quick start

At the root of your project, create the file/folders structure: `.github/workflows/awake.yml`

Paste the following lines:

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

## Use secret url

Under your repository `Settings` > `Secrets`, click `New repository secret` and add your `SECRET_URI`.

```yml
name: Awake Action
on:
  schedule:
    - cron: "45 * * * *"

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: secret-awake
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: ${{ secrets.SECRET_URI }}
```

## Awake many endpoints

```yml
name: Awake Action
on:
  schedule:
    - cron: "45 * * * *"

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: awake-heroku-api
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: "YOUR_HEROKU_URL"
      - name: awake-heroku-client
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: "YOUR_HEROKU_URL"
      - name: awake-mongodb-cluster
        uses: devpolo/awake-action@v1-alpha.3
        with:
          url: "YOUR_MONGODB_URL"
```
