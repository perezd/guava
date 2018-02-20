java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//external:checker_framework/annotations",
        "//external:junit",
        "//external:mockito",
        "//external:truth",
        "//guava-testlib/src/com/google/common/collect/testing",
        "//guava-testlib/src/com/google/common/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/cache",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/util/concurrent",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.cache",
    test_srcs = glob(
        [
            "*Test.java",
            "*Tests.java",
        ],
        exclude = ["LongAdderTest.java"],
    ),
    runtime_deps = [
        ":tests",
        "//external:bytebuddy",
        "//external:objenesis",
    ],
)
