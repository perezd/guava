java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/escape/testing",
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/escape",
        "//external:junit",
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
