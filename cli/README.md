# GitHub Action for Google Cloud

The GitHub Actions for [Google Cloud Platform](https://cloud.google.com/) and wraps the [gcloud SDK](https://cloud.google.com/sdk/) to enable common Google Cloud commands. This is a thin wrapper around the `gcloud` utility.

## Usage
An example workflow to list clusters on Google Cloud Platform:

```yml
on: push
name: Run gcloud command
jobs:
  GCPAuthenticate:
    name: GCP Authenticate
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: GCP Authenticate
      uses: actions/gcloud/auth@master
      env:
        GCLOUD_AUTH: ${{ secrets.GCLOUD_AUTH }}
    - name: GCP List Clusters
      uses: actions/gcloud/cli@master
      with:
        args: container clusters list
```

For more information about the authentication step, [see `auth`](/auth).

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
