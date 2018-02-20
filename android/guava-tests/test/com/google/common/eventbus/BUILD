java_library(
    name = "tests",
    srcs = glob(["**/*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/eventbus",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:checker_framework/annotations",
        "//external:junit",
        "//external:truth",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.eventbus",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
