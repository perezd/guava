java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/collect/testing",
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//external:junit",
        "//external:truth",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.collect.testing",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
