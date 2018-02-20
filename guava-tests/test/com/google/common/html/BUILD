java_library(
    name = "tests",
    srcs = glob(["**/*.java"]),
    deps = [
        "//external:junit",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/html",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.html",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
