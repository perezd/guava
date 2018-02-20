java_library(
    name = "tests",
    srcs = glob(["**/*.java"]),
    resource_strip_prefix = "android/guava-tests/test/",
    resources = glob(["testdata/*"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/hash",
        "//android/guava/src/com/google/common/io",
        "//android/guava/src/com/google/common/primitives",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:jimfs",
        "//external:junit",
        "//external:mockito",
        "//external:truth",
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
