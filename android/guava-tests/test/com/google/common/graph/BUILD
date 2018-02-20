java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/graph",
        "//android/guava/src/com/google/common/primitives",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:error_prone/annotations",
        "//external:junit",
        "//external:truth",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.graph",
    test_srcs = glob(
        [
            "*Test.java",
            "*Tests.java",
        ],
        exclude = [
            "AbstractDirectedGraphTest.java",
            "AbstractDirectedNetworkTest.java",
            "AbstractGraphTest.java",
            "AbstractNetworkTest.java",
            "AbstractUndirectedGraphTest.java",
            "AbstractUndirectedNetworkTest.java",
        ],
    ),
    runtime_deps = [":tests"],
)
