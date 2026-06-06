# Allure commandline Docker Image

![License](https://img.shields.io/github/license/TobiX/allure-cli)
![Last commit](https://img.shields.io/github/last-commit/TobiX/allure-cli)
[![Docker image](https://github.com/TobiX/allure-cli/actions/workflows/deploy.yaml/badge.svg)](https://github.com/TobiX/allure-cli/actions/workflows/deploy.yaml)
![Docker Image Size (2)](https://img.shields.io/docker/image-size/tobix/allure-cli/2?label=image%20size%20(2))
![Docker Image Size (3)](https://img.shields.io/docker/image-size/tobix/allure-cli/3?label=image%20size%20(3))

This docker image contains only the allure command line tool, especially useful
if you otherwise aren't using Node.js or Java in your development process.

Images for both [Allure 2] and [Allure 3] are available:

- `tobix/allure-cli:2` contains the "old" Java-based [Allure 2] commandline
  tool. It's currently available for `linux/amd64`, `linux/arm/v7`,
  `linux/arm64/v8`, `linux/ppc64le`, `linux/riscv64` and `linux/s390x`
- `tobix/allure-cli:3` contains the "modern" node.js-based [Allure 3]
  commandline tool. It's currently available for `linux/amd64`,
  `linux/arm64/v8`, `linux/ppc64le` and `linux/s390x`.

The `:latest` tag points to Allure 2 at the moment. I'd suggest you switch to
the `:2` or `:3` tags, since the tools operate slightly different.

Entry point is the `allure` tool itself, so you can run it like this:

    docker run --rm -v $PWD:/work -p 8080:8080 tobix/allure-cli:3 serve --port 8080 report/dir

or

    docker run --rm -v $PWD:/work -p 8080:8080 tobix/allure-cli:2 serve --host 0.0.0.0 --port 8080 report/dir


[Allure 3]: https://allurereport.org/docs/v3/
[Allure 2]: https://allurereport.org/docs/v2/
