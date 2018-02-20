java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//external:junit",
        "//external:truth",
        "//guava-testlib/src/com/google/common/collect/testing",
        "//guava-testlib/src/com/google/common/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/primitives",
        "//guava/src/com/google/common/util/concurrent",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.primitives",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
