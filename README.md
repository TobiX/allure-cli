# Allure commandline Docker Image

![License](https://img.shields.io/github/license/TobiX/allure-cli)
![Maintenance](https://img.shields.io/maintenance/yes/2023)
[![Docker image](https://github.com/TobiX/allure-cli/actions/workflows/deploy.yaml/badge.svg)](https://github.com/TobiX/allure-cli/actions/workflows/deploy.yaml)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tobix/allure-cli/latest)

This docker image contains only the allure command line tool, especially useful
if you otherwise aren't using Java in your development process. Entry point is
the `allure` tool itself, so you can run it like this:

    docker run --rm -v $PWD:/work tobix/allure-cli serve report/dir
