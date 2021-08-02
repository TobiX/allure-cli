# Allure commandline Docker Image

![License](https://img.shields.io/github/license/Dosage-Bot/allure-cli)
![Maintenance](https://img.shields.io/maintenance/yes/2021)
[![Docker image](https://github.com/Dosage-Bot/allure-cli/actions/workflows/deploy.yaml/badge.svg)](https://github.com/Dosage-Bot/allure-cli/actions/workflows/deploy.yaml)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/tobix/allure-cli/latest)

This docker image contains only the allure command line tool, especially useful
if you otherwise aren't using Java in your developemnt process. Entry point is
the `allure` tool itself, so you can run it like this:

    docker run --rm -v $PWD:/work tobix/allure-cli serve report/dir
