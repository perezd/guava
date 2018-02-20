java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/collect/testing",
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/cache",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:checker_framework/annotations",
        "//external:junit",
        "//external:mockito",
        "//external:truth",
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
