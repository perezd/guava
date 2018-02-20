java_library(
    name = "tests",
    srcs = glob(["**/*.java"]),
    resource_strip_prefix = "guava-tests/test/",
    resources = glob(["testdata/*"]),
    deps = [
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:jimfs",
        "//external:junit",
        "//external:mockito",
        "//external:truth",
        "//guava-testlib/src/com/google/common/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/hash",
        "//guava/src/com/google/common/io",
        "//guava/src/com/google/common/primitives",
        "//guava/src/com/google/common/util/concurrent",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.io",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [
        ":tests",
        "//external:bytebuddy",
        "//external:objenesis",
    ],
)
