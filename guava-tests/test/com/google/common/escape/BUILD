java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//external:junit",
        "//guava-testlib/src/com/google/common/escape/testing",
        "//guava-testlib/src/com/google/common/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/escape",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.escape",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
