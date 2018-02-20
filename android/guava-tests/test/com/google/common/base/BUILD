java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/primitives",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:checker_framework/annotations",
        "//external:junit",
        "//external:truth",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    disable_security_manager = True,
    test_package = "com.google.common.base",
    test_srcs = glob([
        "*Test.java",
        "*Tests.java",
    ]),
    runtime_deps = [":tests"],
)
