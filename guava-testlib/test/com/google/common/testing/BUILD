java_library(
    name = "tests",
    srcs = glob(["**/*.java"]),
    deps = [
        "//external:checker_framework/annotations",
        "//external:jsr305",
        "//external:junit",
        "//external:truth",
        "//guava-testlib/src/com/google/common/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/io",
        "//guava/src/com/google/common/primitives",
        "//guava/src/com/google/common/reflect",
        "//guava/src/com/google/common/util/concurrent",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.testing",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
