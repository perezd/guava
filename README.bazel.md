# Bazel Support for Guava

[![Build Status](https://travis-ci.org/perezd/guava.svg?branch=bazel)](https://travis-ci.org/perezd/guava)

This fork uses the Bazel build system to build all the components of Guava.
This is otherwise a mirror of the upstream Google Guava project.

If you'd like to run all the tests with Bazel, run:

```
bazel test //...
```

NOTE: This branch has a completely different `.travis.yml` file which is used
to continuously test the bazel build system, specifically.

`HEAD` of this branch should always be passing. If you find this is not the case,
please file a bug.

## Workspace dependencies

In order to use this in your own bazel workspace, you'll need to ensure you've
bound the necessary external dependencies. We chose this design to allow you
the user to decide if you want guava to depend on pre-compiled jars or java
source files, depending on your use case.

Review `guava_src_dependencies` and `guava_test_dependencies` in `defs.bzl`
located in the root of the project. If you'd like to use the ones provided here,
simply add the following lines to your `WORKSPACE` file:

```python
load("@your_guava_repo_name//:defs.bzl", "guava_dependencies")
guava_dependencies()
```

## What's supported

We've converted the `guava`, `guava-testlib`, `guava-tests` subprojects to use bazel,
including the `android` variants. However, we have **not** converted `guava-gwt` and
have no intention of doing so.

Also, benchmarks have not been ported over.
