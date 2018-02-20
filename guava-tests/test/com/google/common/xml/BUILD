java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//external:junit",
        "//guava-testlib/src/com/google/common/escape/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/escape",
        "//guava/src/com/google/common/xml",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.xml",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
